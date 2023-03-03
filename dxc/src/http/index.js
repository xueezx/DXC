//index.js 提供访问具体某接口模块对象
import meApi from "./apis/meApi";
import newsApi from "./apis/newsApi";
import brandApi from "./apis/brandApi";
import eatApi from "./apis/eatApi";
import adminApi from "./apis/adminApi";


const httpApi={
  meApi,
  newsApi,
  brandApi,
  eatApi,
  adminApi

}


export default httpApi;