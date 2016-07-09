<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>淘宝小号</title>
<body>
		<div class="workContent ml20">
			<h4>
				<span class="title">旺旺号管理</span>
			</h4>
			<div class="header">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="black-remind">
							<i></i>
							<p>
								1、此页面是用来绑定和维护接任务、购买任务商品的淘宝买号。
								<br>
								2、一个买号一天最多接手6个任务，买号检测或更新时近30天高于18单，自动挂起。
								<br>3、绑定的买号不能在其他平台刷，一经发现该买号锁定处理，相关的任务配合商家要求处理。</p>
						</div>
					</div>
				</div>
			</div>
			<div class="workDoing mt20">
				<div id="tab_demo" class="HuiTab">
					<div class="tabBar cl">
						<span>绑定淘宝买号</span>
						<span>我要批量导入淘宝买号</span>
					</div>
					<div class="tabCon">
						<div class="taobaoTips clearfix mt10">
							<div class="taobaoImg f-l">
								<img src="images/wangwang.png" alt=""></div>
							<div class="taobaoTxt f-l">
								淘宝买手账号：
								<input type="text" class="taobaoTxt-ipt input-text" placeholder="输入旺旺名称进行绑定">
								<a href="#" class="btn btn-secondary radius">绑定淘宝买号</a>
								<div class="tips mt10">
									<p>
										<span class="red">重要提示：</span>
										淘宝买手帐号不是绑定的手机号或Email地址，是淘宝帐号的
										<span class="blue">昵称！</span>
									</p>
									<p>
										<span class="red">重要通知：</span>
										因淘宝规则改变，淘宝号信用不准确，下载“
										<span class="blue">淘宝信用自助更新Chrome扩展插件[wwshua.crx]</span>
										”自助更新，
										<a href="#">点击这里下载和使用帮助！</a>
									</p>
								</div>
							</div>
						</div>
						<div class="workTable mt30 appealTable">
							<table class="table table-border table-bg text-c">
								<thead>
									<tr>
										<th>淘宝账号</th>
										<th>信誉</th>
										<th>单日/本周/乙接任务数</th>
										<th>买号状态</th>
										<th>买号排序</th>
										<th>是否启用</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<span>
												于庭漫步
												<span class="task-point task-mode05" title="买号已通过了支付宝实名认证">实名</span>
											</span>
										</td>
										<td>
											<span>
												<span class="f-l">54</span>
												<span class="heartList f-l">
													<i class="heart"></i>
													<i class="heart"></i>
													<i class="heart"></i>
												</span>
											</span>
										</td>
										<td>
											<span>12/21/12</span>
										</td>
										<td>
											<span class="red">隐藏</span>
										</td>
										<td>
											<input class="input-text"></input>
									</td>
									<td>
										<span>
											<div class="check-box">
												<input type="checkbox" id="checkbox-1">
												<label for="checkbox-1">是否启用</label>
											</div>
										</span>
									</td>
									<td>
										<span>
											<a href="#"  class="btn btn-secondary radius btnUserAddress">收货地址</a>
											<a href="#" class="btn btn-secondary radius btnVPN">VPN设置</a>
											<a href="#" class="btn btn-secondary radius btnBase">基础信息</a>
										</span>
									</td>
								</tr>
								<tr>
									<td>
										<span>
											于庭漫步
											<span class="task-point task-mode05" title="买号已通过了支付宝实名认证">实名</span>
										</span>
									</td>
									<td>
										<span>
											<span class="f-l">54</span>
											<span class="heartList f-l">
												<i class="heart"></i>
												<i class="heart"></i>
												<i class="heart"></i>
											</span>
										</span>
									</td>
									<td>
										<span>12/21/12</span>
									</td>
									<td>
										<span class="red">隐藏</span>
									</td>
									<td>
										<input class="input-text"></input>
								</td>
								<td>
									<span>
										<div class="check-box">
											<input type="checkbox" id="checkbox-3">
											<label for="checkbox-3">是否启用</label>
										</div>
									</span>
								</td>
								<td>
									<span>
										<a href="#"  class="btn btn-secondary radius btnUserAddress">收货地址</a>
										<a href="#" class="btn btn-secondary radius btnVPN">VPN设置</a>
										<a href="#" class="btn btn-secondary radius btnBase">基础信息</a>
									</span>
								</td>
							</tr>
							<tr>
								<td>
									<span>
										于庭漫步
										<span class="task-point task-mode05" title="买号已通过了支付宝实名认证">实名</span>
									</span>
								</td>
								<td>
									<span>
										<span class="f-l">54</span>
										<span class="heartList f-l">
											<i class="heart"></i>
											<i class="heart"></i>
											<i class="heart"></i>
										</span>
									</span>
								</td>
								<td>
									<span>12/21/12</span>
								</td>
								<td>
									<span class="red">隐藏</span>
								</td>
								<td>
									<input class="input-text"></input>
							</td>
							<td>
								<span>
									<div class="check-box">
										<input type="checkbox" id="checkbox-2">
										<label for="checkbox-2">是否启用</label>
									</div>
								</span>
							</td>
							<td>
								<span>
									<a href="#"  class="btn btn-secondary radius btnUserAddress">收货地址</a>
									<a href="#" class="btn btn-secondary radius btnVPN">VPN设置</a>
									<a href="#" class="btn btn-secondary radius btnBase">基础信息</a>
								</span>
							</td>
						</tr>
						<div class="tabBar"></div>
					</tbody>
				</table>
			</div>

		</div>
		<div class="tabCon">
			<div class="taobaoTips clearfix mt10">
				<div class="taobaoImg f-l">
					<img src="images/wangwang.png" alt=""></div>
				<div class="taobaoTxt f-l">
					批量导入买号：
					<a href="#" class="btn btn-secondary radius">导入Excel文件</a>
					<div class="tips mt10">
						<p>
							模板下载： <em class="red">请先点击这里</em>
							下载Excel文件模板,下载后按模板里的格式填写相应的旺旺号名称，再上传!
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</div>
<script>

$(function(){

	layer.config({
	    extend: ['skin/layerSkinExtend.css'], //加载新皮肤
	    skin: 'layer-ext-myskin' //一旦设定，所有弹层风格都采用此主题。
	});
	// 收缩
	$('.open-btn').on('click',function(){
		$(this).parent('.tiro-control').siblings('.panel').find('.showHide').slideToggle();
		$(this).toggleClass('active');
		if ($(this).hasClass('active')) {
			$(this).text('展开');
			// $(this).find('i').css('background-position','4px -28px')
		}else{
			$(this).text('收缩');
			// $(this).find('i').css('background-position','4px 7px')
		}
	});
	
    // 添加买家收货地址
	$('.btnUserAddress').on('click',function(){
            indexAgency=top.layer.open({
                type:2,
                area:['800px','500px'],
                closeBtn:1,
                shadeClose:true,
                content:['./设置买号收货地址(弹窗).html','no'],
                title:'添加买家收货地址',
                btn:['确定','取消'],
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
	// VPN设置
	$('.btnVPN').on('click',function(){
            indexAgency=top.layer.open({
                type:2,
                area:['900px','500px'],
                closeBtn:1,
                shadeClose:true,
                content:'./淘宝小号设置(弹窗).html',
                title:'VPN设置',
                btn:['确定','取消'],
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
	// 基本信息
	$('.btnBase').on('click',function(){
            indexAgency=top.layer.open({
                type:2,
                area:['600px','400px'],
                closeBtn:1,
                shadeClose:true,
                content:['./淘宝小号-基本信息(弹窗).html','no'],
                title:'基本信息',
                btn:['确定','取消'],
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
    $.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
});
</script>
</body>
</html>