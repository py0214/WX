// cart.js
import { Cart } from 'cart-model.js';

var cart = new Cart(); //实例化 购物车

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

  },

  onHide:function(){
    cart.execSetStorageSync(this.data.cartData);
  },


  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    var cartData = cart.getCartDataFromLocal();
    // var countsInfo = cart.getCartTotalCounts(true);
    var cal = this._calcTotalAccountAndCounts(cartData);

    this.setData({
      selectedCounts: cal.selectedCounts,
      selectedTypeCounts: cal.selectedTypeCounts,
      account: cal.account,
      cartData: cartData
    });
  },

  _calcTotalAccountAndCounts: function (data) {
    var len = data.length,

      // 所需要计算的总价格，但是要注意排除掉未选中的商品
      account = 0,

      // 购买商品的总个数
      selectedCounts = 0,

      // 购买商品种类的总数
      selectedTypeCounts = 0;

    let multiple = 100;

    for (let i = 0; i < len; i++) {
      //避免 0.05 + 0.01 = 0.060 000 000 000 000 005 的问题，乘以 100 *100
      if (data[i].selectStatus) {
        account +=
          data[i].counts * multiple * Number(data[i].price) * multiple;
        selectedCounts += data[i].counts;
        selectedTypeCounts++;
      }
    }

    return {
      selectedCounts: selectedCounts,
      selectedTypeCounts: selectedTypeCounts,
      account: account / (multiple * multiple)
    }
  },

  toggleSelect: function (event) {
    var id = cart.getDataSet(event, 'id'),
      status = cart.getDataSet(event, 'status'),
      index = this._getProductIndexById(id);

    this.data.cartData[index].selectStatus = !status;
    console.log(this.data.cartData[index].selectStatus);
    this._resetCartData();
  },

  _resetCartData: function () {
    /*重新计算总金额和商品总数*/
    var newData =
      this._calcTotalAccountAndCounts(this.data.cartData);
    this.setData({
      account: newData.account,
      selectedCounts: newData.selectedCounts,
      selectedTypeCounts: newData.selectedTypeCounts,
      cartData: this.data.cartData
    });
  },

  toggleSelectAll: function (event) {
    var status = cart.getDataSet(event, 'status') == 'true';

    var data = this.data.cartData,
      len = data.length;
    for (let i = 0; i < len; i++) {
      data[i].selectStatus = !status;
    }
    this._resetCartData();
  },

  /*根据商品id得到 商品所在下标*/
  _getProductIndexById: function (id) {
    var data = this.data.cartData,
      len = data.length;
    for (let i = 0; i < len; i++) {
      if (data[i].id == id) {
        return i;
      }
    }
  },

  changeCounts: function (event) {
    var id = cart.getDataSet(event, 'id'),
      type = cart.getDataSet(event, 'type'),
      index = this._getProductIndexById(id),
      counts = 1;

    if (type == 'add') {
      cart.addCounts(id);
    } else {
      counts = -1;
      cart.cutCounts(id);
    }

    this.data.cartData[index].counts += counts;
    this._resetCartData();
  },

  delete: function (event) {
    var id = cart.getDataSet(event, 'id'),
      index = this._getProductIndexById(id);

    this.data.cartData.splice(index, 1);//删除某一项商品

    this._resetCartData();
    cart.delete(id);
  },

  submitOrder: function (event) {
    wx.navigateTo({
      url: '../order/order?account=' + this.data.account + '&from=cart'
    });
  }

})