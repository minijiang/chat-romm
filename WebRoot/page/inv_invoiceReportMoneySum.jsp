<!DOCTYPE html>
  <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"> 
 
<head> 
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> 
	<title>湖南省自来水公司营销管理信息系统</title> 
	
	<link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/text.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/buttons.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/grid.css" type="text/css" media="screen" title="no title" />	
	<link rel="stylesheet" href="../css/layout.css" type="text/css" media="screen" title="no title" />	
	
	<link rel="stylesheet" href="../css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />
	
	<link rel="stylesheet" href="../css/custom.css" type="text/css" media="screen" title="no title">
	<style type="text/css">


	</style>
</head> 
 
<body> 

<div id="wrapper">
	
	<div id="header">
	
		
	</div> <!-- #header -->	
	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">销账汇总报表</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName}</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid" >

		<div class="x12">
			
			<h2>
				销账汇总报表
			</h2>
			
			<div class="searchDiv">
				<div>
					是否交票 <select>
								<option>已交票</option>
								<option>未交票</option>
								<option>所有</option>
							 </select>
							 
					销账情况 <select>
								<option>部分或完全销账</option>
								<option>完全销账</option>
								<option>尚未销账</option>
								<option>所有</option>
							 </select>
							 
					发票类型 <select>
								<option>所有</option>
								<option>普通发票</option>
								<option>增值税发票</option>
							 </select>
					
					<button class="btn btn-small btn-icon btn-find"><span></span>查询</button>
				</div>
				<div> 
					<div style="float:left;width:298px;">
					发票号码 <span class="between">
							<input id="t_invoice1" /> 
							<input type="checkbox" id="ck_invoice_between" class="checkbox"
							onclick="$('#t_invoice2').toggle();" />
							<label for="ck_invoice_between">至</label>
							<input id="t_invoice2" class="hide" />
						</span>
					</div>
						
					<div style="float:left;width:298px;">
					收费日期 <span class="between">
							<input id="t_paydate1" onClick="WdatePicker();" value=""/> 
							<input type="checkbox" id="ck_paydate_between" class="checkbox"
							onclick="$('#t_paydate2').toggle();" />
							<label for="ck_paydate_between">至</label>
							<input id="t_paydate2" onClick="WdatePicker();" class="hide" />
						</span>
					</div>
						 
					<div style="float:left;width:298px;">
					销账日期 <span class="between">
							<input id="t_xzdate1" onClick="WdatePicker();" value=""/> 
							<input type="checkbox" id="ck_xzdate_between" class="checkbox"
							onclick="$('#t_xzdate2').toggle();" />
							<label for="ck_xzdate_between">至</label>
							<input id="t_xzdate2" onClick="WdatePicker();" class="hide" />
						</span>
					</div>
				</div>
				<br/><br/>
			</div>
			<br/>
			
			<div class="reportTitle">
				销账汇总报表
			</div>

			<table class="report">
				<tbody>
					<tr>
						<td align="center" width="20%">总交费金额</td>
						<td align="center" width="20%">总已用金额</td>
						<td align="center" width="20%">总剩余金额</td>
						<td align="center" width="20%">总销账水量</td>
						<td align="center" width="20%">总销账金额</td>
					</tr>
					<tr>
						<td align="right">65603.00 元</td>
						<td align="right">65603.00 元</td>
						<td align="right">65603.00 元</td>
						<td align="right">65603 吨</td>
						<td align="right">65603.00 元</td>
					</tr>
					<tr>
						<td colspan="5" height="40">&nbsp;</td>
					</tr>
					<tr>
						<td align="center">生活用水量</td>
						<td align="right">3215230 吨</td>
						<td>&nbsp;</td>
						<td align="center">生活用水销账金额</td>
						<td align="right">58493582.46 元</td>
					</tr>
					<tr>
						<td align="center">商业用水量</td>
						<td align="right">3215230 吨</td>
						<td>&nbsp;</td>
						<td align="center">商业用水销账金额</td>
						<td align="right">58493582.46 元</td>
					</tr>
					<tr>
						<td align="center">工业用水量</td>
						<td align="right">3215230 吨</td>
						<td>&nbsp;</td>
						<td align="center">工业用水销账金额</td>
						<td align="right">58493582.46 元</td>
					</tr>
					<tr>
						<td align="center">行政用水量</td>
						<td align="right">3215230 吨</td>
						<td>&nbsp;</td>
						<td align="center">行政用水销账金额</td>
						<td align="right">58493582.46 元</td>
					</tr>
					<tr>
						<td align="center">军区用水量</td>
						<td align="right">3215230 吨</td>
						<td>&nbsp;</td>
						<td align="center">军区用水销账金额</td>
						<td align="right">58493582.46 元</td>
					</tr>
					<tr>
						<td align="center">特种用水量</td>
						<td align="right">3215230 吨</td>
						<td>&nbsp;</td>
						<td align="center">特种用水销账金额</td>
						<td align="right">58493582.46 元</td>
					</tr>
					<tr>
						<td colspan="5" height="40">&nbsp;</td>
					</tr>
					<tr>
						<td align="center">居民生活垃圾处理费销账金额</td>
						<td align="right">3215230.00 元</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="center">污水处理费销账金额</td>
						<td align="right">3215230.00 元</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="center">大自然水资源费销账金额</td>
						<td align="right">3215230.00 元</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</tbody>
			</table>
			
		</div> <!-- .x12 -->
		
	</div> <!-- #content -->
	
	<div id="footer">		
		<div class="content_pad">			
			<p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a></p>
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