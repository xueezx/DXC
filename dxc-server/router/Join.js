/**  定义 我们 相关的接口 */
const express = require('express')
const router = express.Router()
const Joi = require('joi')
const Response = require('../utils/Response.js')

// 引入mysql连接池
const pool = require('../utils/db.js')

/**
 * 查询 加盟结果分类
 * @param:
 *   无
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/jmjg', (req, resp) => {
  let sql = 'select * from dxc_jmjg'
  pool.query(sql, (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 分类查询所有 加盟结果
 * @param:
 *   jmjg_id:   加盟结果id
 * @return:
 *   {code:200, msg:'ok', data:[{}]}
 */
router.get('/jmsq/result', (req, resp) => {
  let { jmjg_id } = req.query
  // 表单验证
  let schema = Joi.object({
    jmjg_id: Joi.number().required(),
  })
  let { error, value } = schema.validate(req.query)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 执行查询业务
  let sql = 'select * from dxc_jmsq where jmjg_id=?'
  pool.query(sql, [jmjg_id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok(result))
  })
})

/**
 * 添加 加盟申请 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jmsq/add', (req, resp) => {
  let { name, email, phone, liuyan } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    name: Joi.string().required(),
    email: Joi.string().required(),
    phone: Joi.number().required(),
    liuyan: Joi.string().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `insert into dxc_jmsq (
    name, email, phone, liuyan) values (?,?,?,?)`
  pool.query(sql, [name, email, phone, liuyan], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 删除 加盟申请 接口
 * @param:
 *   id:   加盟申请id
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jmsq/del', (req, resp) => {
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
  let sql = 'delete from dxc_jmsq where id = ?'
  pool.query(sql, [id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

/**
 * 修改 加盟结果 接口
 * @param:
 *   详见接口文档
 * @return:
 *   {code:200, msg:'ok'}
 */
router.post('/jmsq/update', (req, resp) => {
  let { id, jmjg_id } = req.body // post请求参数在req.body中

  // 表单验证
  let schema = Joi.object({
    id: Joi.number().required(),
    jmjg_id: Joi.number().required(),
  })
  let { error, value } = schema.validate(req.body)
  if (error) {
    resp.send(Response.error(400, error))
    return // 结束
  }

  // 表单验证通过，执行添加操作
  let sql = `update dxc_jmsq set 
  jmjg_id=?
  where id=?`
  pool.query(sql, [jmjg_id, id], (error, result) => {
    if (error) {
      resp.send(Response.error(500, error))
      throw error
    }
    resp.send(Response.ok())
  })
})

// 将router对象导出
module.exports = router
