/**  定义 产品 相关的接口 */
const express = require('express')
const router = express.Router()
const Joi = require('joi')
const Response = require('../utils/Response.js')

// 引入mysql连接池
const pool = require('../utils/db.js')

/**
 * 查询所有 产品分类
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/cpfl', (req, resp) => {
  let sql = 'select * from dxc_cpfl order by id asc'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 通过cpfl_id查询 产品类型 接口
 * @param:
 *   cpfl_id:   产品分类id
 * @return:
 *   {code:200, msg:'ok', data:{}}
 */
router.get('/cplx/query_item', (req, resp) => {
  let { cpfl_id } = req.query
  // 表单验证
  let schema = Joi.object({
    cpfl_id: Joi.number().required(), // cpfl_id必须是数字，必填
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 执行查询业务
  let sql = 'select * from dxc_cplx where cpfl_id=?'
  pool.query(sql, [cpfl_id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 通过cplx_id查询 同一类型产品 接口
 * @param:
 *   cplx_id:   产品类型id
 * @return:
 *   {code:200, msg:'ok', data:{}}
 */
router.get('/cplx/query_all', (req, resp) => {
  let { cplx_id } = req.query
  // 表单验证
  let schema = Joi.object({
    cplx_id: Joi.number().required(), // cplx_id必须是数字，必填
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 执行查询业务
  let sql = 'select * from dxc_cpxq where cplx_id=?'
  pool.query(sql, [cplx_id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 通过id查询 产品详情 接口
 * @param:
 *   id:   产品详情id
 * @return:
 *   {code:200, msg:'ok', data:{}}
 */
router.get('/cplx/query_details', (req, resp) => {
  let { id } = req.query
  // 表单验证
  let schema = Joi.object({
    id: Joi.string().required(), // 必填
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 执行查询业务
  let sql = 'select * from dxc_cpxq where id=?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 模糊查询符合 产品名称 要求的接口
 * @param:
 *   name:        产品名称
 * @returns:
 *   {code:200, msg:'ok', data:[{},{},{}]}
 */
router.post('/cp/name', (req, resp) => {
  let { name } = req.body
  //TODO 服务端表单验证  如果验证通过那么继续后续业务  如果验证不通过，则直接返回参数异常
  let schema = Joi.object({
    name: Joi.string().required(), // 必填
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }
  // 执行模糊查询
  let sql = 'select * from dxc_cpxq where title like ?'
  pool.query(sql, [`%${name}%`], (err, result) => {
    if (err) {
      resp.send(Response.error(500, error))
      throw err
    }
    // 将结果封装，返回给客户端
    resp.send(Response.ok(result))
  })
})

/**
 * 查询 同一类型所有产品 接口
 * @param:
 *   cplx_id:      产品类型id
 *   page: 1       当前页码
 *   pagesize: 9  每页条目数
 * @returns:
 *   {code:200, msg:'ok', data:[{},{},{}]}
 */
router.get('/cps', (req, resp) => {
  // 获取请求参数   get请求的参数封装在req.query中
  let { cplx_id, page, pagesize } = req.query

  //TODO 服务端表单验证  如果验证通过那么继续后续业务  如果验证不通过，则直接返回参数异常
  let schema = Joi.object({
    cplx_id: Joi.number().required(), // cplx_id必须是数字，必填
    page: Joi.number().required(), // page必须是数字，必填
    pagesize: Joi.number().integer().required(), // pagesize必须是不大于100的数字，必填
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 查询数据库，表:dxc_cpxq
  let size = parseInt(pagesize)
  let startIndex = (page - 1) * size
  let sql = 'select * from dxc_cpxq where cplx_id=? limit ?,?'
  pool.query(sql, [cplx_id, startIndex, size], (err, result) => {
    if (err) {
      resp.send(Response.error(500, error))
      throw err
    }
    // 将结果封装，返回给客户端
    resp.send(Response.ok(result))
  })
})

/**
 * 添加 产品 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/cp/add', (req, resp) => {
  let {
    title,
    specs,
    ingredients,
    texture,
    for_people,
    storage_condition,
    detail,
    pic,
    cplx_id,
  } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    title: Joi.string().required(),
    specs: Joi.string().required(),
    ingredients: Joi.string().required(),
    texture: Joi.string().required(),
    for_people: Joi.string().required(),
    storage_condition: Joi.string().required(),
    detail: Joi.string().required(),
    pic: Joi.string().required(),
    cplx_id: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `insert into dxc_cpxq (
    title,specs,ingredients,texture,for_people,storage_condition,detail,pic,cplx_id
    ) values (?,?,?,?,?,?,?,?,?)`
  pool.query(
    sql,
    [
      title,
      specs,
      ingredients,
      texture,
      for_people,
      storage_condition,
      detail,
      pic,
      cplx_id,
    ],
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
 * 删除 产品 接口
 * @param:
 *   id:   产品详情id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/cp/del', (req, resp) => {
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
  let sql = 'delete from dxc_cpxq where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 修改 产品详情 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/cp/update', (req, resp) => {
  let {
    id,
    title,
    specs,
    ingredients,
    texture,
    for_people,
    storage_condition,
    detail,
    pic,
    cplx_id,
  } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    id: Joi.number().required(),
    title: Joi.string().required(),
    specs: Joi.string().required(),
    ingredients: Joi.string().required(),
    texture: Joi.string().required(),
    for_people: Joi.string().required(),
    storage_condition: Joi.string().required(),
    detail: Joi.string().required(),
    pic: Joi.string().required(),
    cplx_id: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `update dxc_cpxq set 
  title=?,
  specs=?,
  ingredients=?,
  texture=?,
  for_people=?,
  storage_condition=?,
  detail=?,
  pic=?,
  cplx_id=?
  where id=?`
  pool.query(
    sql,
    [
      title,
      specs,
      ingredients,
      texture,
      for_people,
      storage_condition,
      detail,
      pic,
      cplx_id,
      id,
    ],
    (error, result) => {
      if (error) {
        resp.send(Response.error(500, error))
        throw error
      }
      resp.send(Response.ok())
    }
  )
})

// 将router对象导出
module.exports = router
