//封装  食品  模块相关接口
import myaxios from "../MyAxios";
import BASEURL from "../BaseUrl";
const BMDURL=BASEURL.BMDURL


const foodsApi={

  /** 1.查询  产品分类  */
  queryFoodsClass(){
    let url = BMDURL + "/cpfl";
    return myaxios.get(url,params)
  },

  /** 通过  产品分类id  查询  产品类型  {cpfl_id} */
  queryTypeByClass(){
    let url = BMDURL + "/cplx/query_item?cpfl_id=3";
    return myaxios.get(url,params)
  },

  /** 通过  产品类型id  查询  同一类型产品{cplx_id} */
  queryFoodsByType(){
    let url = BMDURL + "/cplx/query_all?cplx_id=1";
    return myaxios.get(url,params)
  },

  /** 通过名称关键字查询相关产品{name} */
  queryFoodsByName(){
    let url = BMDURL + "/cp/name";
    return myaxios.get(url,params)
  },

  /** 分页查询同一类型所有产品{cplx_id,page,pagesize} */
  queryFoodsByPage(){
    let url = BMDURL + "/cps?cplx_id=1&page=1&pagesize=9";
    return myaxios.get(url,params)
  },


  // 产品详情


  /** 通过id查询产品详情{id} */
  queryFoodsDetailsById(){
    let url = BMDURL + "cplx/query_details?id=2";
    return myaxios.get(url,params)
  },

  /**  通过id删除产品 {id:01} */
  delFoods(params){
    let url = BMDURL + "/cp/del";
    return myaxios.post(url,params)
  },

  /**  添加产品 {title,specs,ingredients,texture,for_people,storage_condition,detail,pic,cplx_id}*/
  addFoods(params){
    let url = BMDURL + "/cp/add";
    return myaxios.post(url,params)
  },

  /**  修改产品 {title,specs,ingredients,texture,for_people,storage_condition,detail,pic,cplx_id}*/
  updateFoods(params){
    let url = BMDURL + "/cp/update";
    return myaxios.post(url,params)
  },


}


export default foodsApi;   //导出某个环境的URL即可