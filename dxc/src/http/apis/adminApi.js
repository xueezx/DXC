//封装  管理员  模块相关接口
import myaxios from "../MyAxios";
import BASEURL from "../BaseUrl";
const BMDURL=BASEURL.BMDURL


const adminApi={

  /**  管理员登录{username,password} */
  queryAdmin(){
    let url = BMDURL + "user/login";
    return myaxios.get(url,params)
  },


}


export default adminApi;   //导出某个环境的URL即可