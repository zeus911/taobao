<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
	<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>

	<form id="updateform" action="${basePath}admin/helpcenter/menu/updatesave.htm" method="post">
		<input name="id" value="${model.id}" type="hidden"/>
		<div class="contaniner">
		  	<div class="div-content">
			<table class="table table-hover" cellpadding="5">
				<tr>
					<td>菜单类目:</td>
					<td colspan="3">
						<span>${menuname}</span>&nbsp;
						<a href="javascript:void(0);" onclick="modifyMenu();">修改</a>
					</td>
				</tr>
				<tr id="selMenuSpan" style="display:none;">
					<td>修改菜单:</td>
					<td colspan="3">
						<span>
							<select onchange="_onchange(this);" class="xytSelect"
									link="${basePath}admin/helpcenter/menu/getlistbypid.htm" pid="-1"
									valuename="id" labelname="name">
							</select>
							<input type="hidden" value="${model.menu.id}" name="menu.id" required="required" id="menuid"/>
						</span>
					</td>
				</tr>
				<tr>
					<td>文档标题:</td>
					<td><input name="title" required="required" value="${model.title}"
						class="easyui-validatebox textbox" width="120px;"/></td>
					<td>排序:</td>
					<td><input name="sort" required="required" value="${model.sort}"
							class="easyui-validatebox textbox" width="40px;"/></td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea cols="180" rows="8" style="width:680px;height:300px;" id="content"
							name="content">${model.content}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="right">
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="checkForm();">更 新</a>
					</td>
				</tr>
	
			</table>
		</div></div>
	</form>
	
	<script src="${basePath}static/js/admin/initdata.js"></script>
	
	<script type="text/javascript">
	function modifyMenu(){
		$('#selMenuSpan').show();
	}
	
	function checkForm(){
		var menuid = $('#menuid').val();
		var content = $.trim($('#content').val());
		if(menuid == ''){
			$.messager.alert("提示", "请选择菜单!");
			return;
		} 
		if(content == ''){
			$.messager.alert("提示", "请输入文档内容!");
			return;
		}
		
		if( $("#updateform").form('validate')){
			$.ajax({
				type : 'post',
				url : '${basePath}admin/helpcenter/document/updatesave.htm',
				data : $('#updateform').serialize(),
				dataType : 'json',
				success : function(result){
					if(result.success){
						window.location.href = '${basePath}admin/helpcenter/document/list.htm';
					}else{
						$.messager.alert("提示", result.msg);
					}
				}
			});
			
		}
		
	}
	
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
				cssPath : '${basePath}static/js/kindeditor/plugins/code/prettify.css',
				uploadJson : '${basePath}admin/common/fileupload/upload.htm',
				fileManagerJson : '${basePath}admin/common/fileupload/upload2.htm',
				allowFileManager : true,
				allowImageRemote : false,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
					});
				},
				
				afterFocus : function(){
					this.sync();
					if(editor1.html() == '此处进行内容编辑...'){
						editor1.html('');
					}
				},
				afterBlur : function(){
					this.sync();
					if(editor1.html() == ''){
						editor1.html('此处进行内容编辑...');
					}
					
				}
			});
			prettyPrint();
		});
	
		$(function(){
			_initSelect();
		}) 
	</script>
</body>
</html>