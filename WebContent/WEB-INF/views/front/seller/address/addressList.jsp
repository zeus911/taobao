<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>收货地址列表</title>
</head>
<body>
	<div class="workContent ml20">
		<h4>
			<span class="title">收货地址列表</span>
		</h4>

		<div class="workDoing mt20">
			<div id="tab_demo" class="HuiTab">
				<div class="tabBar cl">
					<span>收货地址列表</span>
				</div>
				<div class="tabCon">
					<div class="search-tab mt20 search-tab-mini">
						<ul>
							<li class="tab02">
							  <form action="${basePath}front/seller/address/addressList.htm">
						   		<input type="hidden" name="page" value="${vo.page}"/>
						   		<input type="hidden" name="totalPage" value="${vo.totalPage}"/>
						   		
								<span class="tab-title" style="width: 90px;">关键词：</span>
								<input type="text" placeholder="请输入关键词" name="keyword" 
										value="${vo.keyword}" class="input-text radius size-M" />

								<input class="btn radius btn-secondary" type="submit" value="查询" />
							  </form>
							</li>
							<li class="tab02">
								<input class="btn radius btn-secondary btn-addAddress" type="button" value="+添加收货地址" />
								<input class="btn radius btn-secondary btn-deleteAddress1" type="button" value="-删除所有已使用过地址" />
								<input class="btn radius btn-secondary btn-deleteAddress2" type="button" value="-删除所有未使用过地址" />
								<input class="btn radius btn-secondary btn-addAddressAll" type="button" value="+批量导入收货地址" />
							</li>
						</ul>
					</div>
					<div class="workTable mt30 appealTable">
						<table class="table table-border table-bg">
							<thead>
								<tr>
									<th>标签名</th>
									<th>姓名</th>
									<th>电话</th>
									<th>地址</th>
									<th>状态</th>
									<th>添加时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							   <c:forEach items="${list}" var="item">
							   		<tr>
										<td><span>${item.label.name}</span></td>
										<td><span>${item.name}</span></td>
										<td><span>${item.phone}</span></td>
										<td><span>${item.address}</span></td>
										<td><span>${fns:getDictLabel(model.status,'AddressStatus','')}</span></td>
										<td>
											<span>
												<f:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/> 
											</span>
										</td>
										<td>
											<a href="javascript:void(0);" onclick="update(${item.id});" class="btn btn-link">编辑</a>
											<a href="#" class="btn btn-link">删除</a>
										</td>
									</tr>
							   </c:forEach>
								
							</tbody>
						</table>
					</div>

				</div>
				
			</div>
			<div class="clearfix page-wrap"></div>
		</div>

	</div>
	<script>
	
	function update(id){
		 var indexUpdate = top.layer.open({
             type:2,
             area:['600px','450px'],
             closeBtn:1,
             shadeClose:true,
             content:['${basePath}front/seller/address/addressUpdate.htm?id='+id,'no'],
             title:'修改收货地址',
             btn:['确定','取消'],
             yes:function(index){
                 console.log('这里执行提交操作');
             }
         }); 
	}
	
	$(function(){
		// 添加收货地址
		$('.btn-addAddress').on('click',function(){
	            var indexAdd = top.layer.open({
	                type:2,
	                area:['600px','450px'],
	                closeBtn:1,
	                shadeClose:true,
	                content:['${basePath}front/seller/address/addressAdd.htm','no'],
	                title:'添加收货地址',
	                btn:['确定','取消'],
	                yes:function(index){
	                    console.log('这里执行提交操作');
	                }
	            });  
	        });
	   // 确认删除
	        $('.btn-deleteAddress1').on('click',function(){
	            indexOk = top.layer.open({
	                type:1,
	                content:'您确定要删除所有已使用过的收货地址吗?',
	                shadeClose:true,
	                title:'信息',
	                btn:['确认','取消'],
	                yes:function(){
	                   console.log('成功回调');
	                    
	                }
	            });
	            return false;
	        });
	         $('.btn-deleteAddress2').on('click',function(){
	            indexOk = top.layer.open({
	                type:1,
	                content:'您确定要删除所有已使用过的收货地址吗?',
	                shadeClose:true,
	                title:'信息',
	                btn:['确认','取消'],
	                yes:function(){
	                   console.log('成功回调');
	                    
	                }
	            });
	            return false;
	        });
	         // 批量上传文件
		$('.btn-addAddressAll').on('click',function(){
	            indexAgency=top.layer.open({
	                type:2,
	                area:['600px','400px'],
	                closeBtn:1,
	                shadeClose:true,
	                content:['./批量导入收货地址(弹窗).html','no'],
	                title:'添加收货地址',
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