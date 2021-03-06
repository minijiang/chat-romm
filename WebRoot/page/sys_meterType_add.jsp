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
			<span id="pagetitle"><a href="javascript:;">抄表辖区设置</a></span>
			<span id="welcome_span">欢迎回来，马云</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
		
 		
		<div class="x12">
			
			<h2>添加/修改水表型号</h2>
			
			<div class="form label-inline uniform">
			<c:if test="${meter !=null }"><form action="updatemeter.do" method="post"></c:if>
			<c:if test="${meter ==null }"><form action="../addmeter.do" method="post"></c:if>
				<div class="field"><label for="id">水表型号ID</label> <input id="id" name="id" size="50" type="text" class="medium" disabled="disabled" value="<c:if test="${meter.id>0 }">${meter.id}</c:if>" /><input name="mid" value="${meter.id}" type="hidden"/></div>
				
				<div class="field"><label for="name">水表型号</label> <input id="name" name="meterTypeName" size="50" type="text" class="medium"  value="${meter.meterTypeName }"/></div>
				
				<div class="field"><label for="name">设置口径</label> <input id="name" name="aperture" size="50" type="text" class="medium" value="${meter.aperture }"/></div>
				
				<div class="field"><label for="name">最大表码</label> <input id="name" name="mavValue" size="50" type="text" class="medium" value="${meter.mavValue }"/></div>
				
				<div class="field"><label for="name">下限设置</label> <input id="name" name="minValue" size="50" type="text" class="medium" value="${meter.minValue }"/> 吨</div>
				
				<div class="field"><label for="name">周检年限</label> <input id="name" name="life" size="50" type="text" class="medium" value="${meter.life }"/> 年</div>

							
				<div class="field"><label for="description">备注</label> <textarea rows="7" cols="50" id="description" name="remark">${meter.remark}</textarea></div>

				<div class="buttonrow">
					<button class="btn">保存</button>  
					<button class="btn btn-grey" onClick="history.back(-1);">返回</button>
				</div>
              </form>
			</div>

		</div> <!-- .x12 -->
		
	</div> <!-- #content -->
	
	<div id="footer">		
		<div class="content_pad">			
			<p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">-------</a>.</p>
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