<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>湖南省自来水公司营销管理信息系统</title>

<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="css/text.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="css/form.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="css/buttons.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="css/grid.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen" title="no title" />

<link rel="stylesheet"
	href="css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="css/plugin/jquery.visualize.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="css/plugin/facebox.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="css/plugin/uniform.default.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="css/plugin/dataTables.css"
	type="text/css" media="screen" title="no title" />

<link rel="stylesheet" href="css/custom.css" type="text/css"
	media="screen" title="no title">
<style type="text/css">
table.report {
	width: 300px;
	margin: 0px auto;
}

table.report th,table.report td {
	padding: 10px;
	font-size: 14px;
}
</style>
</head>

<body>

	<%@ include file="../index.jsp"%>
	<div id="wrapper">

	

		<div id="masthead">
			<div>
				<span id="pagetitle"><a href="javascript:;">发票使用情况查询</a></span> <span
					id="welcome_span">欢迎回来，${emp.empName }</span>
			</div>
		</div>
		<!-- #masthead -->

		<div id="content" class="xgrid">

			<div class="x12">

				<h2>
					发票使用情况查询
					<div style="float:right;">
						发票使用情况汇总表 <a href="selectipu.do">发票使用情况明细表</a>
					</div>
				</h2>


				<div class="searchDiv">


					<form action="selout.do" method="post" >
						<div>

							<div style="float:left;width:150px;">
								收费员 <select class="medium" name="empid">
									<option value="0">所有</option>
									<c:forEach items="${ ellist}" var="e">
										<option value="${e.id}">${e.empName }</option>
									</c:forEach>
								</select>
							</div>

							<div style="float:left;width:298px;">
								发票号码 <span class="between"> <input id="t_invoice1"
									name="startNo" /> <input type="checkbox"
									id="ck_invoice_between" class="checkbox"
									onclick="$('#t_invoice2').toggle();" /> <label
									for="ck_invoice_between">至</label> <input id="t_invoice2"
									class="hide" name="endNo" />
								</span>
							</div>

							<div style="float:left;">
								使用日期 <span class="between"> <input id="t_paydate1"
									onClick="WdatePicker();" name=""
									value="<%out.print(new java.text.SimpleDateFormat("yyyy-MM-dd")
					.format(new Date()));%>" />
									<input type="checkbox" id="ck_paydate_between" class="checkbox"
									onclick="$('#t_paydate2').toggle();" /> <label
									for="ck_paydate_between">至</label> <input id="t_paydate2"
									onClick="WdatePicker();" class="hide" name="outDate1" />
								</span>
							</div>

						</div>
						<br /> <br />
						<div>
							是否使用 <select name="used">
								<option value="-1">所有</option>
								<option value="0">未使用</option>
								<option value="1">已使用</option>
							</select> 是否作废 <select name="invalid">
								<option value="-1">所有</option>
								<option value="0">未作废</option>
								<option value="1">已作废</option>
							</select> 是否交票 <select name="archived">
								<option value="-1">所有</option>
								<option value="0">未交票</option>
								<option value="1">已交票</option>
							</select> 发票类型 <select name="invoiceType">
								<option value="-1" >所有</option>
								<option value="0">普通发票</option>
								<option value="1">增值税发票</option>
							</select> 用户编码 <input name="userNo" />

							<button class="btn btn-small btn-icon btn-find" type="submit">
								查询</button>

						</div>
					</form>


				</div>

				<br /> <br />

				<div class="reportTitle">发票使用情况汇总表</div>

			


				<table class="report">
					<tbody>
				
					<tr hidden="hidden">
							<td align="center">起始号码</td>
							<td align="right">59340301</td>
						</tr>
						<tr hidden="hidden">
							<td align="center">终止号码</td>
							<td align="right">59409726</td>
						</tr>
					
					
					
						<tr hidden="hidden">
							<td align="center">起始日期</td>
							<td align="right">2013年01月01日</td>
						</tr>
						<tr hidden="hidden">
							<td align="center">终止日期</td>
							<td align="right">2013年12月31日</td>
						</tr>

					<tr>
							<td align="center">合计张数</td>
							<td align="right">${out.archived } 张</td>
						</tr>
						<tr>
							<td align="center">使用张数</td>
							<td align="right">${out.used } 张</td>
						</tr>
						<tr>
							<td align="center">作废张数</td>
							<td align="right">${out.invalid } 张</td>
						</tr>
						<tr>
							<td align="center">合计金额</td>
							<td align="right">${out.archived*200 } 元</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- .x12 -->

		</div>
		<!-- #content -->

		<div id="footer">
			<div class="content_pad">
				<p>
					&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>. </p>
			</div>
			<!-- .content_pad -->
		</div>
		<!-- #footer -->

	</div>
	<!-- #wrapper -->

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
		$(document).ready(function() {
			Dashboard.init();

		});
	</script>

</body>

</html>