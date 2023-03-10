//封装  品牌  模块相关接口
import myaxios from "../MyAxios";
import BASEURL from "../BaseUrl";
const BMDURL = BASEURL.BMDURL

const brandApi = {

  /** 1.查询所有品牌历史  返回promise对象 */
  queryAllBrand() {
    let url = BMDURL + "/ls";
    return myaxios.get(url)
  },

  /** 3.删除 {id:01} */
  delBrand(params) {
    let url = BMDURL + "/ls/del";
    return myaxios.post(url, params)
  },

  /** 4.添加 {title,pic,ctime}*/
  addBrand(params) {
    let url = BMDURL + "/ls/add";
    return myaxios.post(url, params)
  },




  /** 查询所有传承人*/
  queryAllInheritor() {
    let url = BMDURL + "/ccr";
    return myaxios.get(url)
  },

  /** 删除 {id:01} */
  delInheritor(params) {
    let url = BMDURL + "/ccr/del";
    return myaxios.post(url, params)
  },

  /** 添加 {title,info,pic}*/
  addInheritor(params) {
    let url = BMDURL + "/ccr/add";
    return myaxios.post(url, params)
  },




  /** 查询集团荣誉  上*/
  queryHonorTop() {
    let url = BMDURL + "/jtrytop";
    return myaxios.get(url)
  },

  /** 删除 {id:01} */
  delHonor(params) {
    let url = BMDURL + "/jtry/del";
    return myaxios.post(url, params)
  },

  /** 添加 {title,info,pic}*/
  addHonor(params) {
    let url = BMDURL + "/jtry/add";
    return myaxios.post(url, params)
  },

  queryHonor() {
    let url = BMDURL + "/jtry";
    return myaxios.get(url)
  }

}

export default brandApi;   //导出某个环境的URL即可