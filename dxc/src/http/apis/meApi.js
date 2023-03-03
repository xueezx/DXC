//封装  我们  模块相关接口
import myaxios from "../MyAxios";
import BASEURL from "../BaseUrl";
const BMDURL=BASEURL.BMDURL

const meApi={

  /** 1.查询所有分支机构  返回promise对象 */
  queryAllBranch(){
    let url = BMDURL + "/fzjg";
    return myaxios.get(url)
  },

  /**
   * 2.修改 {title,address,postal_code,phone,fax,website}
   */
  updateBranch(params){
    let url = BMDURL + "/fzjg/update";
    return myaxios.post(url,params)
  },

  /** 3.删除 {id:01} */
  delBranch(params){
    let url = BMDURL + "/fzjg/del";
    return myaxios.post(url,params)
  },

  /** 4.添加 {title,address,postal_code,phone,fax,website}*/
  addBranch(params){
    let url = BMDURL + "/fzjg/add";
    return myaxios.post(url,params)
  },


  /** 查询所有加工厂,轮播图*/
  queryAllPlant(){
    let url = BMDURL + "/jgc";
    return myaxios.get(url)
  },

  /**
   * 修改 {name,address,pic}
   */
  updatePlant(params){
    let url = BMDURL + "/jgc/update";
    return myaxios.post(url,params)
  },

  /** 删除 {id:01} */
  delPlant(params){
    let url = BMDURL + "/jgc/del";
    return myaxios.post(url,params)
  },

  /** 添加 {name,address,pic}*/
  addPlant(params){
    let url = BMDURL + "/jgc/add";
    return myaxios.post(url,params)
  },

  /** 查询服务理念*/
  queryFwln(){
    let url = BMDURL + "/fwln";
    return myaxios.get(url)
  },

    /** 查询食品制作步骤*/
  querySteps(){
    let url = BMDURL + "/spaq";
    return myaxios.get(url,params)
  },

}

export default meApi;   //导出某个环境的URL即可