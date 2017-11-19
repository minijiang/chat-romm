<!DOCTYPE html>
 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%@ taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
			<span id="pagetitle"><a href="javascript:;">员工设置</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
	 		
		<div class="x12">
		
			<div id="facebox_delete" style="display: none">
				<div style="height:80px;text-align:center;padding-top:50px;">
					确认删除吗？
				</div>
				
				<div class="dialogbutton center">
					<a class="btn" href="javascript:closeDialog();" style="width:60px;">是</a>  
					<a class="btn btn-grey" href="javascript:closeDialog();" style="width:60px;">否</a>
				</div>
			</div>
			
			<h2>员工设置</h2>
			
			
		<p>
			<div style="float:left;">
				<button class="btn-icon btn-plus" onClick="location='page/sys_emp_add.jsp';"><span></span>添加员工</button>
			</div>

			
			<div style="float:right;">
				部门 
				<select id="type" class="medium" onchange="cha()">
						<option selected="selected" value="0">所有部门</option>
						<c:forEach items="${dlist}" var="d">
						<option value="${d.id }">${d.deptName}</option>
						</c:forEach>
				</select>
			</div>
		</p>

				
			<table class="data display datatable">
					<thead>
						<tr>
							<th>员工ID</th>
							<th>员工工号</th>
							<th>员工姓名</th>
							<th>所属部门</th>
							<th>备注</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${elist }" var="e">
						<tr class="odd gradeX">
							<td>${e.id }</td>
							<td>${e.empNo }</td>
							<td>${e.empName }</td>
							<td>${e.deptName }</td>
							<td>${e.remark }</td>
							<td class="center">
								<button class="btn-icon btn-small btn-blue btn-star" onClick="location='selempid.do?id=${e.id}';"><span></span>修改</button>  
								<a href="delemp.do?id=${e.id }" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
							</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
			
		</div> <!-- .x12 -->
		
	</div> <!-- #content -->
	
	<div id="footer">		
		<div class="content_pad">			
			<p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">------</a>.</p>
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

function cha(){

   var id = document.getElementById("type").value;
   location.href="selempdeptid.do?id="+id;
}

</script>

</body> 
 
</html>