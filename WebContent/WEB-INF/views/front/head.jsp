<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>万万楼</title>
</head>
<body>
<div class="PersonalCenter-header">
    <div class="PersonalCenter-header-w1200 clearfix">
        <!--PersonalCenter-header-l-->
        <div class="PersonalCenter-header-l">
            <div class="myjz-logo"><a href="javascript:void(0);"><img src="${basePath}static/css/front/images/myjz-logo.png" /></a></div>
            <div class="location"><span class="location-address">福州<em class="location-down"></em></span></div>
            <div class="PersonalCenter-header-nav clearfix">
                <ul>
                    <li><a href="javascript:void(0);">万万楼首页</a></li>
                    <li><a href="javascript:void(0);">新房</a></li>
                </ul>
            </div>
        </div>
        <!--PersonalCenter-header-r-->
        <div class="PersonalCenter-header-r clearfix">
        	<c:if test="${frontUser!=null}">
        		<ul class="clearfix">
	                <li>您好！<span class="sp-icon"><a href="javascript:void(0);">${frontUser.username}</a></span></li>
	                <li>丨</li>
	                <li><a href="${basePath}front/logout.htm">退出</a></li>
	                <li>丨</li>
	                <li><a href="javascript:void(0);">联系客服</a></li>
	                <li>丨</li>
	                <li><span class="sp-icon"><a href="javascript:void(0);">网站导航</a></span></li>
	            </ul>
        	</c:if>
      <div class="userMsg" style="display: none;">
        <div class="userMsg-data clearfix">
          <img src="${basePath}static/css/front/images/icon-commet-head.png">
          <span class="userMsg-data-detail">
            <span class="userMsg-name">${frontUser.username}</span> <br>
            <span class="userMsg-link">
	            <span><a href="#">我的资料</a></span>
	            <span class="split">|</span>
	            <span><a href="javascript:void(0)" onclick="changeMenu('${basePath}front/member/asset/myaccount/list.htm')">我的账户</a></span>
            </span>
          </span>
        </div>
        <div class="userMsg-link-body">
          <div class="userMsg-data-money">
            <span class="userMsg-data-money-detail">夺宝币：<span class="red">50,000</span></span>
            <a href="javascript:void(0)" onclick="changeMenu('${basePath}front/member/asset/myaccount/list.htm')">查看</a>
          </div>
          <span class="Userline-hr"></span>
          <div class="privilege-link">
            <span class="userMsg-link">
            	<span><a href="javascript:void(0)" onclick="changeMenu('${basePath}front/member/asset/bonus/list.htm')">我的红包</a></span><span class="split">|</span>
            	<span><a href="javascript:void(0)" onclick="changeMenu('${basePath}front/member/asset/discount/list.htm')">我的抵扣卡券</a></span>
            </span>
          </div>
        </div>
      </div>
        </div>
    </div>
</div>
<!--PersonalCenter-banner-->
<div class="PersonalCenter-banner">
    <div class="PersonalCenter-banner-w1200">
  <img src="${basePath}static/css/front/images/myjz-text.png">
  <ul class="clearfix head-menu">
    <li><a href="${basePath}front/index.htm">首页</a></li>
    <li><a href="${basePath}front/main.htm">个人中心</a></li>
  </ul>
  </div>
</div>
</body>
</html>