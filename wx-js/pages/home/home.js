// home.js

//引入Home类从XXX文件
import { Home } from 'home-model.js';

var home = new Home();

Page({

  /**
   * 页面的初始数据
   */
  data: {

  },

  //默认的页面生命周期函数，里面定义私有方法处理业务
  onLoad: function () {
    this._loadData();
  },

  _loadData: function () {
    var id = 1;
    home.getBannerData(id, (res) => {
      this.setData({
        'bannerArr': res
      });
    });

    home.getThemeData((res) => {

      this.setData({
        'themeArr': res
      });
    });

    home.getProductsData((data) => {
      this.setData({
        productsArr: data
      });
    });

  },

  onProductsItemTap: function (event) {
    var id = home.getDataSet(event, 'id');
    wx.navigateTo({
      url: '../product/product?id=' + id
    });
  },

  onThemesItemTap: function (event) {
    var id = home.getDataSet(event, 'id');
    var name = home.getDataSet(event, 'name');
    wx.navigateTo({
      url: '../theme/theme?id=' + id + '&name=' + name
    })
  },


})