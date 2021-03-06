<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>任务大厅</title>
</head>
<body>

<%@include file="/WEB-INF/views/front/buyer/header.jsp" %>

<section class="container mt50">
<div class="panel panel-default panel-tips mt20">
	<div class="panel-header">重要说明</div>
	<div class="panel-body">
		<p>
			1、商家发任务请及时到本平台审核和处理，在默认时间内操作不会多支付旺点给买家，超出默认时间，
			<span class="orange">每超过12小时多支付2个旺点</span>
			，请在默认的时间内操作和审核；
		</p>
		<p>
			2、任务【
			<span class="blue">接手方已付款，等待商家审核</span>
			】默认审核时间：24小时。任务有超时会补偿旺点给买家（
			<span class="orange">
				<span class="orange">每超出12小时补偿2个旺点</span>
			</span>
			）；
		</p>
		<div class="showHide">
			<p>
				3、任务【
				<span class="blue">确认付款，等待商家发货</span>
				】默认审核时间：
				<span class="blue">4小时</span>
				，超过时间自动发货；
			</p>
			<p>
				4、任务【
				<span class="blue">确认收货好评，完成任务</span>
				】默认审核时间：
				<span class="blue">24小时</span>
				。如果再超过24小时还未审核，即在48小时未审核，系统将自动返款(本金和佣金)给买家，请商家及时审核，出现相关问题后果自负。任务有超时会补偿旺点给买家（
				<span class="orange">每超出12小时补偿2个旺点</span>
				）；
			</p>
			<p>
				5、
				<商家span class="blue">发布的任务价格为实际下单价格</商家span>
				，禁止和店铺优惠券、红包等优惠信息一起使用，否则后果自行承担；
			</p>
			<p>
				6、快递物流出现卡住或没有物流信息的情况，淘宝上发货超过8天，即第8天应允许买家在淘宝确认收货和好评，这种情况不算买家提前收货，请商家选择好的快递公司；
			</p>
			<p>
				7、在任务【
				<span class="blue">接手方已付款，等待商家审核</span>
				】的商家审核步骤，请商家严格审查买家付款信息(订单号、买家旺旺号)等信息 ，如出现不一致，请马上提起申诉，否则后续出现相关问题后果自负。比如：❶、出现接单旺旺号与店铺实际下单旺旺号不一致，但您也给审核通过了，导致后面您真实发货，后果自负；❷、出现买家在旺旺刷平台回填的订单号与店铺实际下单的订单号不一致，但您也给审核通过了，导致后面您真实发货，后果自负。任务有超时审核会补偿旺点给买家（
				<span class="orange">每超出12小时补偿2个旺点</span>
				）；
			</p>
			<p>
				8、在任务【
				<span class="blue">确认收货好评，完成任务</span>
				】的商家审核步骤，请商家严格审查买家是否确认收货和好评等 ，若买家未按要求完成，请马上提起申诉，否则后续出现相关问题后果自负；
			</p>
			<p>
				9、买家未按商家要求做任务（如未收货未好评、使用淘宝客、信用卡支付等），商家可以投诉，平台只受理未完成任务的投诉，任务完成不再受理；
			</p>
			<p>
				10、【重点提示】 若商家的账户余额不足（
				<span class="blue">
					余额
					< 0元</span>
						），还有进行中的任务，需要商家审核的步骤【
						<span class="blue">接手方已付款，等待商家审核</span>
						】、【
						<span class="blue">确认收货好评，完成任务</span>
						】，商家未在默认
						<span class="blue">24小时</span>
						内审核，超时的任务自动审核通过，若后续出现相关问题商家后果自行承担！
					</p>
				</div>
				<div class="checkShow">
					<label for="checkshow">
						<input type="checkbox" name="checkshow" id="checkshow">&nbsp;下次不再自动展开</label>
				</div>
			</div>
		</div>
		<div class="tiro-control">
			<span class="click-btn open-btn">
				收缩 <i></i>
			</span>
		</div>
</section>

<section class="container taobaoData">
	<div id="tab_demo" class="HuiTab">
		<div class="tabBar cl">
			<span>精刷任务</span>
			<span>流量任务</span>
			<span>您能接的精刷任务</span>
			<span>您能接的流量任务</span>
		</div>
		
		<div class="tabCon">
			<div class="search-tab">
				<ul class="clearfix">
					<li class="tab02">
						<span class="tab-title">任务编号：</span>
						<input type="text" placeholder="请输入任务编号" class="input-text radius size-M">
						<input class="btn radius btn-secondary" type="button" value="查询"></li>
					<li class="tab03">
						<span class="tab-title">星级选择：</span>
						<span class="star">
							<a href="#">不限</a>
						</span>
						<span class="star">
							<a href="#">一星</a>
						</span>
						<span class="star">
							<a href="#">二星</a>
						</span>
						<span class="star">
							<a href="#">三星</a>
						</span>
						<span class="star">
							<a href="#">四星</a>
						</span>
						<span class="star">
							<a href="#">五星</a>
						</span>
						<span class="star">
							<a href="#">一钻</a>
						</span>
						<span class="star">
							<a href="#">二钻或以上</a>
						</span>
					</li>
				</ul>
			</div>
			<div class="searchTable mt10">
				<table class="table table-border table-bg">
					<thead>
						<tr>
							<th>任务编号</th>
							<th>任务价格（元）</th>
							<th width="30%">发布者要求</th>
							<th>任务佣金</th>
							<th>发布时间</th>
							<th>分享</th>
							<th>任务操作状态</th>
						</tr>
					</thead>
					<tbody>
					  <c:forEach items="${list}" var="order">
						<tr>
							<td class="first">
								<span>${order.orderno}</span>
								<span>发布人：${order.createuser.username}</span>
								<span>
									<span class="label label-warning radius">淘宝</span>
									<span class="mobile-order" title="接任务者需要通过手机、pad等智能设备的app下单支付">手机订单</span>
								</span>
							</td>
							<td>
								<span class="orange">${order.bond}</span>
							</td>
							<td>
								<span>物流显示签收后五星带字好评</span>
								<span>
									<span class="label label-success radius">本人签收</span>
									<span class="label label-success radius">三星</span>
									<span class="label label-success radius">实名</span>
									<span class="label label-success radius">拍付款</span>
									<span class="label label-warning radius">分享</span>
									<span class="label label-warning radius">收藏</span>
									<span class="label label-warning radius">浏览</span>
									<span class="label label-success radius">本人签收</span>
									<span class="label label-success radius">三星</span>
									<span class="label label-success radius">实名</span>
									<span class="label label-success radius">拍付款</span>
									<span class="label label-warning radius">分享</span>
									<span class="label label-warning radius">收藏</span>
									<span class="label label-warning radius">浏览</span>
								</span>
							</td>
							<td>
								<span class="orange">11.75元</span>
							</td>
							<td>
								<span><f:formatDate value="${order.publictime}" pattern="yyyy/MM/dd HH:mm:ss"/></span>
							</td>
							<td>
								<a href="#" class="btn-share">分享到</a>
							</td>
							<td>
								<input class="btn radius btn-secondary" type="button" value="抢此任务"></td>
						</tr>
					  </c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="tabCon">
			<p class="mt10">提示：流量单平台会收取10%佣金!</p>
			<div class="searchTable mt10">
				<table class="table table-border table-bg">
					<thead>
						<tr>
							<th>任务编号</th>
							<th>任务价格（元）</th>
							<th width="30%">发布者要求</th>
							<th>任务佣金</th>
							<th>发布时间</th>
							<th>分享</th>
							<th>任务操作状态</th>
						</tr>
					</thead>
					<tbody>
					  <c:forEach items="${list}" var="order">
						<tr>
							<td class="first">
								<span>${order.orderno}</span>
								<span>发布人：${order.createuser.username}</span>
								<span class="label label-warning radius">淘宝</span>
							</td>
							<td>
								<span class="orange">71.40</span>
							</td>
							<td>
								<span>物流显示签收后五星带字好评</span>
								<span>
									<span class="label label-success radius">本人签收</span>
									<span class="label label-success radius">三星</span>
									<span class="label label-success radius">实名</span>
									<span class="label label-success radius">拍付款</span>
									<span class="label label-warning radius">分享</span>
									<span class="label label-warning radius">收藏</span>
									<span class="label label-warning radius">浏览</span>
									<span class="label label-success radius">本人签收</span>
									<span class="label label-success radius">三星</span>
									<span class="label label-success radius">实名</span>
									<span class="label label-success radius">拍付款</span>
									<span class="label label-warning radius">分享</span>
									<span class="label label-warning radius">收藏</span>
									<span class="label label-warning radius">浏览</span>
								</span>
							</td>
							<td>
								<span class="orange">11.75元</span>
							</td>
							<td>
								<span><f:formatDate value="${order.publictime}" pattern="yyyy/MM/dd HH:mm:ss"/></span>
							</td>
							<td>
								<a href="#" class="btn-share">分享到</a>
							</td>
							<td>
								<input class="btn radius btn-secondary" type="button" value="抢此任务" />
							</td>
						</tr>
					 </c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="tabCon">内容三</div>
		
		<div class="tabCon">内容四</div>
		
	</div>

</section>

<%@include file="/WEB-INF/views/front/buyer/footer.jsp" %>

<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=270863798&site=qq&menu=yes" id="QQ-link">
	<img border="0" src="http://wpa.qq.com/pa?p=2:270863798:53" alt="点击这里给我发消息" title="点击这里给我发消息"/>
</a>
<script>

$(function(){
	// 弹出提示
    indexAgency= top.layer.open({
            type:2,
            area:['900px','550px'],
            shadeClose:true,
            content:['${basePath}front/buyer/tip.htm','no'],
            btn:'确定',
            title:'重点说明(30秒后自动关闭)',
            time:30000,
            yes:function(index){
                layer.close(indexAgency);
            }
        }); 
        
	$('.star').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
		return false;
	})
	// 收缩
	$('.open-btn').on('click',function(){
		$(this).parent('.tiro-control').siblings('.panel').find('.showHide').slideToggle();
		$(this).toggleClass('active');
		if ($(this).hasClass('active')) {
			$(this).text('展开');
		}else{
			$(this).text('收缩');
		}
	});
$.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");

        // 抢此任务
        $('.btn-secondary').on('click',function(){
        	index= top.layer.open({
	            type:2,
	            area:['500px','450px'],
	            shadeClose:true,
	            content:['./任务操作状态说明(弹窗).html','no'],
	            btn:['确定','取消'],
	            title:'重点说明(100秒后自动关闭)',
	            time:100000,
	            yes:function(index){
	                layer.close(indexAgency);
	            }
	        }); 
        });
        
        // 确定分享
        $('.btn-share').on('click',function(){
            indexOk = top.layer.open({
                type:1,
                content:'已复制此链接',
                shadeClose:true,
                title:['信息'],
                time:2000,
                btn:['确认','取消'],
                yes:function(){
                   console.log('成功回调');
                    
                }
            });
            return false;
        });
});
</script>
</body>
</html>
