
import { Config } from 'config.js';
import { Token } from 'token.js';

class Base {
  constructor() {
    this.baseRequestUrl = Config.restUrl;
  }

 // 当noRefech为true时，不做未授权重试机制
  request(params, noRefetch) {
    var that = this;
    var url = this.baseRequestUrl + params.url;

    if (!params.type) {//默认GET
      params.type = 'GET';
    }

    wx.request({
      url: url,
      data: params.data,
      method: params.type,
      header: {//http令牌在header里面传递
        'content-type': 'application/json',
        'token': wx.getStorageSync('token')//从缓存读取令牌并加入header
      },
      success: function (res) {
        // if(params.sCallBack){
        //   params.sCallBack(res);
        // }

        var code = res.statusCode.toString();
        var startChar = code.charAt(0);

        if (startChar == '2') {
          params.sCallback && params.sCallback(res.data);
        }
        else {
          //AOP
          if (code == '401') {
            // token.getTokenFromServer
            // base.request
            if (!noRefetch) {
              that._refetch(params);
            }
          }
          if(noRefetch){
            params.eCallback && params.eCallback(res.data);
          }
        }
      },
      fail: function (err) {
        console.log(err);
      }
    })
  }

  _refetch(params) {
    var token = new Token();
    token.getTokenFromServer((token) => {
      this.request(params, true);
    });
  }

  /*获得元素上的绑定的值*/
  getDataSet(event, key) {
    return event.currentTarget.dataset[key];
  };

}

export { Base };