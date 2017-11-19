<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

 <%@ include file="../index.jsp" %>
					
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">发票交票情况查询</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid" >

		<div class="x12">
			
			<h2>发票交票情况查询</h2>
			
			<div class="reportTitle">
				发票交票情况报表
			</div>
			<table class="report">
				<thead>
					<tr>
						<th width="100">交票序号</th>
						<th width="120">起始号码</th>
						<th width="120">终止号码</th>
						<th width="90">总张数</th>
						<th width="90">已用数</th>
						<th width="90">作废数</th>
						<th width="100">交票日期</th>
						<th width="100">收票人</th>
						<th>交票人</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${alist }" var="a" varStatus="sa">
					<tr>
						<td class="center">${sa.index }</td>
						<td class="center">${a.startNo }</td>
						<td class="center">${a.endNo }</td>
						<td class="right">${a.incounts }</td>
						<td class="right">${a.outcounts }</td>
						<td class="right">${a.archived }</td>
						<td class="center"><fmt:formatDate value="${a.outDate }"/>  </td>
						<td class="center">${a.empName }</td>
						<td class="center">${a.outEmpName }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="page">
				<a href="getariv.do?curpage=0">第一页</a>
				<a href="getariv.do?curpage=${curpage-1 }">上一页</a>
				<input class="pageIndex" value="${curpage+1 }"/> / <input class="pageCount" readonly="readonly" value="98765" />
				<a href="getariv.do?curpage=${curpage+1 }">下一页</a>
				<a href="getariv.do?curpage=${maxcurpage}">第未页</a>
			</div>
				
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
<script src="../My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
	
$(document).ready ( function () 
{
	Dashboard.init ();
	
});


</script>

</body> 
 
</html>