//封装新闻模块相关接口
import myaxios from "../MyAxios";
import BASEURL from "../BaseUrl";
const BMDURL=BASEURL.BMDURL


const newsApi={

  /** 1.查询新闻类型  返回promise对象 */
  queryNewsType(){
    let url = BMDURL + "/xwfl";
    return myaxios.get(url,params)
  },

  /** 分页查询同一分类所有新闻 {xwfl_id,page,pagesize}*/
  queryNewsByPage(){
    let url = BMDURL + "/xwsj?xwfl_id=1&page=1&pagesize=10";
    return myaxios.get(url,params)
  },

  /** 模糊查询相关新闻{keywords}*/
  queryAboutNews(){
    let url = BMDURL + "/xwsj/keywords";
    return myaxios.get(url,params)
  },

  /** 3.删除新闻 {id:01} */
  delBranch(params){
    let url = BMDURL + "/xwsj/del";
    return myaxios.post(url,params)
  },

  /** 4.添加 {title,address,postal_code,phone,fax,website}*/
  addBranch(params){
    let url = BMDURL + "/xwsj/add";
    return myaxios.post(url,params)
  },
}


export default newsApi;   //导出某个环境的URL即可