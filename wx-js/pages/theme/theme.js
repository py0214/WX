// theme.js
import { Theme } from 'theme-model.js';
var theme = new Theme(); //实例化  主题列表对象

Page({

  /**
   * 页面的初始数据
   */
  data: {
  
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var id = options.id;
    var name = options.name;
    this.data.id = id;
    this.data.name = name;
   
    this._loadData();
  },

  onReady:function(){
    wx.setNavigationBarTitle({
      title: this.data.name,
    })
  },

  _loadData:function(){
    theme.getProductsData(this.data.id,(data)=>{
        this.setData({
          themeInfo:data
        });
    });
  },

  onProductsItemTap: function (event) {
    var id = theme.getDataSet(event, 'id');
    wx.navigateTo({
      url: '../product/product?id=' + id
    })
  }
})