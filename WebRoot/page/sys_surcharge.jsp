<!DOCTYPE html>
  <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
			<span id="pagetitle"><a href="javascript:;">附加费设定</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
		
 		
		<div class="x12">
		
		
			
			
			<div id="facebox_delete" style="display: none">
				<div style="height:80px;text-align:center;padding-top:50px;">
					确认禁用吗？
				</div>
				
				<div class="dialogbutton center">
					<a class="btn" href="javascript:closeDialog();" style="width:60px;">是</a>  
					<a class="btn btn-grey" href="javascript:closeDialog();" style="width:60px;">否</a>
				</div>
			</div>
			
			<h2>附加费设定</h2>
			
			<p><button class="btn-icon btn-plus" onClick="location='sys_surcharge_add.html';"><span></span>添加附加费</button></p>
				
			<table class="data display">
					<thead>
						<tr>
							<th width="55">附加费ID</th>
							<th width="70">附加费编码</th>
							<th width="70">附加费简称</th>
							<th width="70">附加费全称</th>
							<th width="70">附加费单价（元/吨）</th>
							<th>附加费征收范围</th>
							<th width="80">备注</th>
							<th width="160"></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${culist }" var="s">
						<tr class="odd">
							<td>${s.id }</td>
							<td>${s.code }</td>
							<td>${s.costTypeName }</td>
							<td>${s.fullName }</td>
							<td>${s.price }</td>
							<td>${s.surchargeText }</td>
							<td>${s.remark }</td>
							<td class="center">
								<a href="selsurchageid.do?id=${s.id}"><button class="btn-icon btn-small btn-blue btn-star" ><span></span>修改</button><a/>
								<a href="updatesurchageDs.do?id=${s.id}"> <a  href="#" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>禁用</a></a>
							</td>
						</tr>
                       </c:forEach>
					</tbody>
				</table>
			
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