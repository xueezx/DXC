//封装  新闻  模块相关接口
import myaxios from "../MyAxios";
import BASEURL from "../BaseUrl";
const BMDURL = BASEURL.BMDURL


const newsApi = {

  /** 1.查询新闻类型  返回promise对象 */
  queryNewsType() {
    let url = BMDURL + "/xwfl";
    return myaxios.get(url)
  },

  /** 2. 分页查询同一分类所有新闻 {xwfl_id,page,pagesize}*/
  queryNewsByPage(params) {
    let url = BMDURL + "/xwsj";
    return myaxios.get(url, params)
  },

  /** 3. 通过id查询新闻详情 {id}*/
  queryDetail(params) {
    let url = BMDURL + "/xwsj/detail";
    return myaxios.get(url, params)
  },

  /** 4. 模糊查询相关新闻{keywords}*/
  queryAboutNews(params) {
    let url = BMDURL + "/xwsj/keywords";
    return myaxios.post(url, params)
  },

  /** 5. 删除新闻 {id:01} */
  delNews(params) {
    let url = BMDURL + "/xwsj/del";
    return myaxios.post(url, params)
  },

  /** 6. 添加 {title,address,postal_code,phone,fax,website}*/
  addNews(params) {
    let url = BMDURL + "/xwsj/add";
    return myaxios.post(url, params)
  },

  // 7.修改新闻
  updateNew(params) {
    let url = BMDURL + "/xwsj/add";
    return myaxios.post(url, params)
  },
}


export default newsApi;   //导出某个环境的URL即可