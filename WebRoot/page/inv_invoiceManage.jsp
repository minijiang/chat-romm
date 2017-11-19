<!DOCTYPE html>
  <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt"  prefix="fmt" %>
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
	<style type="text/css">
	.data td,.data th,.data tr{padding:10px 2px !important; text-align:right !important; }
	</style>
</head> 
 
<body> 

<div id="wrapper">
	

	<%@ include file="../index.jsp" %>
	
	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">发票总表</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
		
 		
		<div class="x12">
			
			<h2>发票总表</h2>
			
			<a href="javascript:;" onclick="$('#description').toggle();">显示/隐藏说明</a>
			<div id="description" class="hide">
			发票使用流程为：入库-出库-使用/作废-交票<br/>
			总张数：从税务局入库至公司财务室的发票总张数<br/>
			出库数：从财务室出库至收费室收费员手中总张数<br/>
			未出数：即[总张数]减[出库数]<br/>
			已用数：从收费员手中打印给客户的发票总张数（保有第二联）<br/>
			作废数：从收费员手中做作废处理的发票总张数<br/>
			待用数：在收费员手中还可以使用的发票总数，即[出库数]-([已用数]+[作废数])<br/>
			已交数：从收费员手中交还至财务室进行归档做账的发票总张数<br/>
			未交数：尚留在收费员手中的发票，可以是已用的，作废的或待用的<br/>
						<br/>
			</div>
			
			<table class="data display">
					<thead>
						<tr>
							<th width="80">发票类型</th>
							<th width="80">起始号码</th>
							<th width="80">终止号码</th>
							<th width="60">总张数</th>
							<th width="60">出库数</th>
							<th width="60">未出数</th>
							<th width="60">已用数</th>
							<th width="60">作废数</th>
							<th width="60">待用数</th>
							<th width="60">已交数</th>
							<th width="60">未交数</th>
							<th width="80">入库日期</th>
							<th>入库操作员</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${ilist }" var="li" varStatus="i">
					 <c:if test="${i.index%2 ==0 }"><tr class="even"></c:if>   
					  <c:if test="${i.index%2 !=0 }"><tr class="odd"></c:if> 
						
							<td><c:if test="${li.invoiceType==0 }">普通发票</c:if>
							     <c:if test="${li.invoiceType==1 }">普通发票</c:if>
							</td>
							<td>${li.startNo }</td>
							<td>${li.endNo }</td>
							<td>${li.incounts }</td>
							<td>${li.outcounts }</td>
							<td>${li.incounts-li.outcounts}</td>
							<td>${li.used }</td>
							<td>${li.archived }</td>
							<td>
							
							 ${li.incounts-(li.used+li.archived)  }
							
							
							</td>
							<td>${li.invalid }</td>
							<td>
							${li.incounts-li.invalid }
						
							</td>
							<td><fmt:formatDate  value="${li.inDate}"/> </td>
							<td> ${li.empName }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="page">
					<a href="selIvinvoice.do?curpage=0">第一页</a>
					<a href="selIvinvoice.do?curpage=${curpage-1 }">上一页</a>
					<input class="pageIndex" value="${curpage+1}"/> / <input class="pageCount" readonly="readonly" value="${maxcurpage+1 }" />
					<a href="selIvinvoice.do?curpage=${curpage+1 }">下一页</a>
					<a href="selIvinvoice.do?curpage=${maxcurpage}">第未页</a>
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

<script type="text/javascript">
	
$(document).ready ( function () 
{
	Dashboard.init ();		
});

</script>

</body> 
 
</html>