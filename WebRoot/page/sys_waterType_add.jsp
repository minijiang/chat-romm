<!DOCTYPE html>
 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt"%>
<html xmlns="http://www.w3.org/1999/xhtml"> 
 
<head> 
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> 
	<title>湖南省自来水公司营销管理信息系统</title> 
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/text.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/form.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/buttons.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/grid.css" type="text/css" media="screen" title="no title" />	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/layout.css" type="text/css" media="screen" title="no title" />	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/custom.css" type="text/css" media="screen" title="no title">

</head> 
 
<body> 

<div id="wrapper">
	
		<%@include file="../index.jsp" %>
	
	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">用水类型设定</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
		
 		
		<div class="x12">
			
			<h2>添加/修改用水类型</h2>
			<c:if test="${costType!=null }"><form action="updatecosttype.do" method="post"></c:if>
			<c:if test="${costType==null }"><form action="../addcosttype.do" method="post"></c:if>
			<div class="form label-inline uniform">
	
				<div class="field"><label for="id">用水类型ID</label> 
				<c:if test="${ costType!=null}"><input id="id" name="fname" size="50" type="text" class="medium" disabled="disabled" value="${ costType.id}" /></c:if>
				<c:if test="${ costType==null}"><input id="id" name="fname" size="50" type="text" class="medium" disabled="disabled" value="自动生成" /></c:if>
				<input name="cid"  value="${costType.id}" type="hidden"> 
				</div>
				
				<div class="field"><label for="name">用水类型编码</label> <input id="name" name="code" size="50" type="text" class="medium"  value="${costType.id}"/></div>
				
				<div class="field"><label for="name">用水类型名称</label> <input id="name" name="costTypeName" size="50" type="text" class="medium" value="${costType.costTypeName}"/></div>
				
				<div class="field"><label for="name">单价</label> <input id="name" name="price" size="50" type="text" class="medium" value="${costType.price}"/> 元/吨</div>

							
				<div class="field"><label for="description">备注</label> <textarea rows="7" cols="50" id="description" name="remark">${costType.remark}</textarea></div>

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
			<p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">-----</a>.</p>
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