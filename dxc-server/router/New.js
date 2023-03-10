/**  定义 新闻 相关的接口 */
const express = require('express')
const router = express.Router()
const Joi = require('joi')
const Response = require('../utils/Response.js')

// 引入mysql连接池
const pool = require('../utils/db.js')

/**
 * 查询 新闻分类
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/xwfl', (req, resp) => {
  let sql = 'select * from dxc_xwfl'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 查询 新闻数据
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/xwsj/detail', (req, resp) => {
  let { id } = req.query
  // 表单验证
  let schema = Joi.object({
    id: Joi.number().required(), // cpfl_id必须是数字，必填
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 执行查询业务
  let sql = 'select * from dxc_xwsj where id=?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})


/**
 * 分页查询 同一分类所有新闻 接口
 * @param:
 *   xwfl_id:      产品类型id
 *   page: 1       当前页码
 *   pagesize: 6  每页条目数
 * @returns:
 *   {code:200, msg:'ok', data:[{},{},{}]}
 */
router.get('/xwsj', (req, resp) => {
  // 获取请求参数   get请求的参数封装在req.query中
  let { xwfl_id, page, pagesize } = req.query

  //TODO 服务端表单验证  如果验证通过那么继续后续业务  如果验证不通过，则直接返回参数异常
  let schema = Joi.object({
    xwfl_id: Joi.number().required(), // 必填
    page: Joi.number().required(), // page必须是数字，必填
    pagesize: Joi.number().integer().required(), // pagesize必须是不大于100的数字，必填
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 查询数据库，表:dxc_xwsj
  let size = parseInt(pagesize)
  let startIndex = (page - 1) * size
  let sql = 'select * from dxc_xwsj where xwfl_id=? limit ?,?'
  pool.query(sql, [xwfl_id, startIndex, size], (err, result) => {
    if (err) {
      resp.send(Response.error(500, error))
      throw err
    }
    // 将结果封装，返回给客户端
    resp.send(Response.ok(result))
  })
})

/**
 * 删除 新闻 接口
 * @param:
 *   id:   新闻id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/xwsj/del', (req, resp) => {
  let { id } = req.body

  // 表单验证
  let schema = Joi.object({
    id: Joi.string().required(), // 必填
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 执行删除业务
  let sql = 'delete from dxc_xwsj where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 添加 新闻 接口
 * @param:
 *   title    新闻标题
 *   ctime    新闻时间
 *   pic      图片
 *   content  内容
 *   xwfl_id  分类id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/xwsj/add', (req, resp) => {
  let { title, ctime, pic, content, xwfl_id } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    title: Joi.string().required(), // 必填
    ctime: Joi.string().required(), // 必填
    pic: Joi.string().required(), // 必填
    content: Joi.string().required(), // 必填
    xwfl_id: Joi.string().required(), // 必填
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql =
    'insert into dxc_xwsj (title,ctime,pic,content,xwfl_id) values (?,?,?,?,?)'
  pool.query(sql, [title, ctime, pic, content, xwfl_id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 修改 新闻 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/xwsj/update', (req, resp) => {
  let { id, title, ctime, pic, content, xwfl_id } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    id: Joi.number().required(),
    title: Joi.string().required(),
    ctime: Joi.string().required(),
    pic: Joi.string().required(),
    content: Joi.string().required(),
    xwfl_id: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `update dxc_xwsj set 
  title=?,
  ctime=?,
  pic=?,
  content=?,
  xwfl_id=?
  where id=?`
  pool.query(
    sql,
    [title, ctime, pic, content, xwfl_id, id],
    (error, result) => {
      if (error) {
        resp.send(Response.error(500, error))
        throw error
      }
      resp.send(Response.ok())
    }
  )
})

/**
 * 模糊查询符合 相关新闻 的接口
 * @param:
 *   keywords:        新闻关键字
 * @returns:
 *   {code:200, msg:'ok', data:[{},{},{}]}
 */
router.post('/xwsj/keywords', (req, resp) => {
  let { keywords } = req.body
  //TODO 服务端表单验证  如果验证通过那么继续后续业务  如果验证不通过，则直接返回参数异常
  let schema = Joi.object({
    keywords: Joi.string().required(), // 必填
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }
  // 执行模糊查询
  let sql = 'select * from dxc_xwsj where title like ?'
  pool.query(sql, [`%${keywords}%`], (err, result) => {
    if (err) {
      resp.send(Response.error(500, error))
      throw err
    }
    // 将结果封装，返回给客户端
    resp.send(Response.ok(result))
  })
})

// 将router对象导出
module.exports = router
