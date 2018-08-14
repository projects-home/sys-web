define('app/jsp/member/memberlist', function (require, exports, module) {
    'use strict';
    var $=require('jquery'),
	    Widget = require('arale-widget/1.2.0/widget'),
	    Dialog = require("optDialog/src/dialog"),
	    AjaxController = require('opt-ajax/1.0.0/index');
//    	  require("layui/layui");
    
    var SendMessageUtil = require("app/util/sendMessage");
    
    //实例化AJAX控制处理对象
    var ajaxController = new AjaxController();
    var clickId = "";
    //定义页面组件类
    var memberListPager = Widget.extend({
    	
    	Implements:SendMessageUtil,
    	//属性，使用时由类的构造函数传入
    	attrs: {
    		clickId:""
    	},
    	Statics: {
    		DEFAULT_PAGE_SIZE: 10
    	},
    	//事件代理
    	events: {
    		
            },
    	//重写父类
    	setup: function () {
    		memberListPager.superclass.setup.call(this);
    		
    		
    		layui.use('laydate', function(){
    	        var laydate = layui.laydate;
    	        
    	        //执行一个laydate实例
    	        laydate.render({
    	          elem: '#start' //指定元素
    	        });

    	        //执行一个laydate实例
    	        laydate.render({
    	          elem: '#end' //指定元素
    	        });
    	      });
    		
//    		this._clearQueryParams();
//    		this._selectDiscountList();
//    		this._queryDiscountClass();
//    		this._getDiscountType();
    	},
    	//滚动到顶部
    	_returnTop:function(){
    		var container = $('.wrapper-right');
    		container.scrollTop(0);//滚动到div 顶部
    	}, 	
    	_isBlank : function(obj){
    		return(!obj || $.trim(obj) === "");
    	}
    });
    
    module.exports = memberListPager
});

