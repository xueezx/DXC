/**  定义 品牌 相关的接口 */
const express = require('express')
const router = express.Router()
const Joi = require('joi')
const Response = require('../utils/Response.js')

// 引入mysql连接池
const pool = require('../utils/db.js')

/**
 * 查询所有 品牌历史
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/ls', (req, resp) => {
  let sql = 'select * from dxc_ls order by id desc'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 添加 品牌历史 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/ls/add', (req, resp) => {
  let { title, pic, ctime } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    title: Joi.string().required(),
    pic: Joi.string().required(),
    ctime: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `insert into dxc_ls (
      title,
      pic,
      ctime
    ) values (?,?,?)`
  pool.query(sql, [title, pic, ctime], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 查询 集团荣誉(上)
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/jtrytop', (req, resp) => {
  let sql = 'select * from dxc_jtrytop'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 查询所有 集团荣誉(下)
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/jtry', (req, resp) => {
  let sql = 'select * from dxc_jtry'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 添加 集团荣誉 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jtry/add', (req, resp) => {
  let { title, pic } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    title: Joi.string().required(),
    pic: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `insert into dxc_jtry (
      title,
      pic
    ) values (?,?)`
  pool.query(sql, [title, pic], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 查询所有 传承人
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/ccr', (req, resp) => {
  let sql = 'select * from dxc_ccr'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 添加 传承人 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/ccr/add', (req, resp) => {
  let { title, info, pic } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    title: Joi.string().required(),
    info: Joi.string().required(),
    pic: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `insert into dxc_ccr (
      title,
      info,
      pic
    ) values (?,?,?)`
  pool.query(sql, [title, info, pic], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 删除 品牌历史
 * @param:
 *   id:   品牌历史id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/ls/del', (req, resp) => {
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
  let sql = 'delete from dxc_ls where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 删除  传承人
 * @param:
 *   id:   传承人id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/ccr/del', (req, resp) => {
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
  let sql = 'delete from dxc_ccr where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 删除 集团荣誉
 * @param:
 *   id:   集团荣誉id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jtry/del', (req, resp) => {
  let { id } = req.body

  // 表单验证
  let schema = Joi.object({
    id: Joi.number().required(), // 必填
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 执行删除业务
  let sql = 'delete from dxc_jtry where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 分页查询 所有文化活动 接口
 * @param:
 *   page: 1       当前页码
 *   pagesize: 6  每页条目数
 * @returns:
 *   {code:200, msg:'ok', data:[{},{},{}]}
 */
router.get('/whhd', (req, resp) => {
  // 获取请求参数   get请求的参数封装在req.query中
  let { page, pagesize } = req.query

  //TODO 服务端表单验证  如果验证通过那么继续后续业务  如果验证不通过，则直接返回参数异常
  let schema = Joi.object({
    page: Joi.number().required(), // page必须是数字，必填
    pagesize: Joi.number().integer().required(), // pagesize必须是不大于100的数字，必填
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 查询数据库，表:dxc_whhd
  let size = parseInt(pagesize)
  let startIndex = (page - 1) * size
  let sql = 'select * from dxc_whhd limit ?,?'
  pool.query(sql, [startIndex, size], (err, result) => {
    if (err) {
      resp.send(Response.error(500, error))
      throw err
    }
    // 将结果封装，返回给客户端
    resp.send(Response.ok(result))
  })
})

/**
 * 删除 文化活动 接口
 * @param:
 *   id:   文化活动id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/whhd/del', (req, resp) => {
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
  let sql = 'delete from dxc_whhd where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 添加 文化活动 接口
 * @param:
 *   title    活动标题
 *   ctime    活动时间
 *   content  内容
 *   pic      图片
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/whhd/add', (req, resp) => {
  let { title, ctime, content, pic } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    title: Joi.string().required(), // 必填
    ctime: Joi.string().required(), // 必填
    content: Joi.string().required(), // 必填
    pic: Joi.string().required(), // 必填
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = 'insert into dxc_whhd (title,ctime,content,pic) values (?,?,?,?)'
  pool.query(sql, [title, ctime, content, pic], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 修改 文化活动 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/whhd/update', (req, resp) => {
  let { id, title, ctime, content, pic } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    id: Joi.number().required(),
    title: Joi.string().required(),
    ctime: Joi.string().required(),
    content: Joi.string().required(),
    pic: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `update dxc_whhd set 
      title=?,
      ctime=?,
      content=?,
      pic=?
      where id=?`
  pool.query(sql, [title, ctime, content, pic, id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

// 将router对象导出
module.exports = router
