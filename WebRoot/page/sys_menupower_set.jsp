<!DOCTYPE html>
 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt"%>
<html xmlns="http://www.w3.org/1999/xhtml"> 
 
<head> 
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> 
	<title>湖南省自来水公司营销管理信息系统</title> 
	
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/text.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/form.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/buttons.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen" title="no title" />	
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" title="no title" />	
	
	<link rel="stylesheet" href="css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />
	
	<link rel="stylesheet" href="css/custom.css" type="text/css" media="screen" title="no title">

</head> 
 
<body> 

<div id="wrapper">
	
		<%@include file="../index.jsp" %>


	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">菜单权限</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
		
 		
		<div class="x12">
			
			<h2>设置菜单权限</h2>
			<form action="addEmpMenuPowers.do" method="post">
			<div class="form label-inline uniform xgrid">
				<c:if test="${emplst!=null }">
				<div class="field">
					<span class="bold">正在设置以下员工的菜单权限<span> <br/>
					<span class="red">注意：你正在编辑多个员工的菜单权限，不会显示这些员工的原有权限。
							<br/>仅仅在只编辑一个员工时，才会显示该员工的原有权限。</span>
				</div>
				<div class="field">
					<textarea class="medium" disabled="disabled" style="width:100%;height:50px;" />
					<c:forEach items="${emplst }" var="e">${e.empName },</c:forEach></textarea>
				</div>
				</c:if>
		
				<c:forEach items="${emplst }" var="el">
					<input type="hidden" name="id" value="${el.id}" />
				</c:forEach>
				<c:if test="${emplst==null }">
					<input type="hidden" name="id" value="${e.id }" />
					<div class="field">
					<span class="bold">正在设置以下员工的菜单权限<span> <br/>
					<textarea class="medium" disabled="disabled" style="width:100%;height:50px;" />
					${e.empName }</textarea>
					</div>
				</c:if>
				<c:forEach items="${menulst }" var="menu">
				<c:if test="${menu.parents==0 }">
				<div class="portlet x2">
					<div class="controlset field">
						<span class="label">${menu.menuName }</span>
						<div class="controlset-pad">
						<c:forEach items="${menulst }" var="m">
						<c:if test="${menu.id==m.parents }">
							<input type="checkbox" name="id" value="${m.id }" 
								<c:forEach items="${mlist }" var="ml">
								  <c:if test="${ml.id==m.id }">checked="checked"</c:if>
								</c:forEach> />
								<label for="check1">${m.menuName }</label><br />
							</c:if>
						</c:forEach>
						</div>
					</div>
				</div>
				</c:if>
				</c:forEach>
				<div class="buttonrow">
					<button class="btn">保存</button>  
					<button class="btn btn-grey" onClick="history.back(-1);">返回</button>
				</div>
			</div>
		</form>
		</div> <!-- .x12 -->
		
	</div> <!-- #content -->
	
	<div id="footer">		
		<div class="content_pad">			
			<p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">图灵教育</a>.</p>
		</div> <!-- .content_pad -->
	</div> <!-- #footer -->
	
</div> <!-- #wrapper -->

<script src="../js/jquery/jquery-1.5.2.min.js"></script>
<script src="../js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="../js/misc/excanvas.min.js"></script>
<script src="../js/jquery/facebox.js"></script>
<script src="../js/jquery/jquery.visualize.js"></script>
<script src="../js/jquery/jquery.dataTables.min.js"></script>
<script src="../js/jquery/jquery.tablesorter.min.js"></script>
<script src="../js/jquery/jquery.uniform.min.js"></script>
<script src="../js/jquery/jquery.placeholder.min.js"></script>

<script src="../js/widgets.js"></script>
<script src="../js/dashboard.js"></script>

<script type="text/javascript">
	
$(document).ready ( function () 
{
	Dashboard.init ();		
});

</script>

</body> 
 
</html>