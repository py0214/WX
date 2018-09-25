
import { Base } from '../../utils/base.js';

class Home extends Base{
  //一定要有构造函数
  constructor(){
    super();
  }

//向服务器发送请求调用数据
//小程序没有同步，只有异步，res为服务器返回结果
  getBannerData(id, callback){
    var params = {
      url: 'banner/'+id,
      sCallback:function(res){
        callback && callback(res.items);
      }
    }
    this.request(params);
  }

  /*首页主题*/
  getThemeData(callback) {
    var param = {
      url: 'theme?ids=1,2,3',
      sCallback: function (data) {
        callback && callback(data);
      }
    };
    this.request(param);
  }

  getProductsData(callback) {
    var param = {
      url: 'product/recent',
      sCallback: function (data) {
        callback && callback(data);
      }
    };
    this.request(param);
  }


}




export {Home};