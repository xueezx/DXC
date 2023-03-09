/**  定义 我们 相关的接口 */
const express = require('express')
const router = express.Router()
const Joi = require('joi')
const Response = require('../utils/Response.js')

// 引入mysql连接池
const pool = require('../utils/db.js')

/**
 * 查询所有 服务理念
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/fwln', (req, resp) => {
  let sql = 'select * from dxc_fwln'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 查询所有 分支机构
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/fzjg', (req, resp) => {
  let sql = 'select * from dxc_fzjg'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 添加 分支机构 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/fzjg/add', (req, resp) => {
  let { title, address, postal_code, phone, fax, website } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    title: Joi.string().required(),
    address: Joi.string().required(),
    postal_code: Joi.string().required(),
    phone: Joi.string().required(),
    fax: Joi.string().required(),
    website: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `insert into dxc_fzjg (
    title,
    address,
    postal_code,
    phone,
    fax,
    website) values (?,?,?,?,?,?)`
  pool.query(
    sql,
    [title, address, postal_code, phone, fax, website],
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
 * 删除 分支机构 接口
 * @param:
 *   id:   分支机构id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/fzjg/del', (req, resp) => {
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
  let sql = 'delete from dxc_fzjg where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 修改 分支机构 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/fzjg/update', (req, resp) => {
  let { id, title, address, postal_code, phone, fax, website } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    id: Joi.string().required(),
    title: Joi.string().required(),
    address: Joi.string().required(),
    postal_code: Joi.string().required(),
    phone: Joi.string().required(),
    fax: Joi.string().required(),
    website: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `update dxc_fzjg set 
  title=?,
  address=?,
  postal_code=?,
  phone=?,
  fax=?,
  website=?
  where id=?`
  pool.query(
    sql,
    [title, address, postal_code, phone, fax, website, id],
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
 * 查询所有 加工厂
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/jgc', (req, resp) => {
  let sql = 'select * from dxc_jgc'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 添加 加工厂 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jgc/add', (req, resp) => {
  let { name, address, pic } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    name: Joi.string().required(),
    address: Joi.string().required(),
    pic: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `insert into dxc_jgc (
    name,
    address,
    pic) values (?,?,?)`
  pool.query(sql, [name, address, pic], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 删除 加工厂 接口
 * @param:
 *   id:   影院id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jgc/del', (req, resp) => {
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
  let sql = 'delete from dxc_jgc where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 修改 加工厂 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jgc/update', (req, resp) => {
  let { id, name, address, pic } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    id: Joi.number().required(),
    name: Joi.string().required(),
    address: Joi.string().required(),
    pic: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `update dxc_jgc set 
  name=?,
  address=?,
  pic=?
  where id=?`
  pool.query(sql, [name, address, pic, id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 查询所有 食品安全
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/spaq', (req, resp) => {
  let sql = 'select * from dxc_spaq'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

// 将router对象导出
module.exports = router
