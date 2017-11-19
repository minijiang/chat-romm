<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>

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
	
<jsp:include page="../index.jsp"/>
	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">流程配置</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
	
		<div class="x12">
			
			<h2>流程配置</h2>
			<form action="updateMenu.do" method="post">
			<p><button class="btn"><span></span>保存配置</button></p>
				
			<table class="data display">
			<thead>
				<tr>
					<th width="80">序号</th>
					<th width="120">流程工作项</th>
					<th>负责部门</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${menulst }" var="menu" varStatus="i">
				<input type="hidden" name="id" value="${menu.id }">
				<c:if test="${i.index%2==0 }"><tr class="odd"></c:if>
				<c:if test="${i.index%2!=0 }"><tr class="even"></c:if>
					<td>${i.count }</td>
					<td>${menu.menuName }</td>
					<td><select name="flowID">
						<c:forEach items="${deptlst }" var="dept">
							<option value="${dept.id }" <c:if test="${dept.id==menu.flowID }">selected="selected"</c:if> >${dept.deptName }</option>
						</c:forEach>
					</select></td>
					<td></td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
			</form>
		</div> <!-- .x12 -->
		
	</div> <!-- #content -->
	
	<div id="footer">		
		<div class="content_pad">			
			<p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">图灵教育</a>.</p>
		</div> <!-- .content_pad -->
	</div> <!-- #footer -->
	
</div> <!-- #wrapper -->

<script src="js/jquery/jquery-1.5.2.min.js"></script>
<script src="js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="js/misc/excanvas.min.js"></script>
<script src="js/jquery/facebox.js"></script>
<script src="js/jquery/jquery.visualize.js"></script>
<script src="js/jquery/jquery.dataTables.min.js"></script>
<script src="js/jquery/jquery.tablesorter.min.js"></script>
<script src="js/jquery/jquery.uniform.min.js"></script>
<script src="js/jquery/jquery.placeholder.min.js"></script>

<script src="js/widgets.js"></script>
<script src="js/dashboard.js"></script>

<script type="text/javascript">
	
$(document).ready ( function () 
{
	Dashboard.init ();		
});

</script>

</body> 
 
</html>