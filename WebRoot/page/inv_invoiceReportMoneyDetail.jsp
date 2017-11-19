<!DOCTYPE html>
  <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt"  prefix="fmt" %>
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
	.reportDiv { padding:10px 40px; }
	table.report thead th { background-color:#CCCCCC; }
	.split { background-color:#ccc; }
	table.report tfoot td { padding:0px; }
	table.report tfoot td div { margin:0px; overflow:hidden; width:80px;  }
	</style>
</head> 
 
<body> 

<div id="wrapper">
	
	<%@ include  file="../index.jsp" %>
	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">销账明细报表</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid" >
		<div class="x12"  style=" margin-bottom:0px;">
			<h2>销账明细报表</h2>
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
					<button class="btn btn-small btn-icon btn-star btn-blue"><span></span>
						导出到Excel文件</button>
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
			</div>
		</div> <!-- .x12 -->
	</div> <!-- #content -->
	
	<div class="reportTitle">
		销账明细报表
	</div>	
	
	<div class="reportDiv" style="width:2080px;">
		<table class="report" style="width:2080px;">
			<thead>
				<th width="160">交费单号</th>
				<th width="80">发票号</th>
				<th width="80">发票类型</th>
				<th width="80">交费日期</th>
				<th width="80">交费金额</th>
				<th width="80">已用金额</th>
				<th width="80">剩余金额</th>
				<th width="80">收费员</th>
				<th width="80">生活用水量</th>
				<th width="80">商业用水量</th>
				<th width="80">工业用水量</th>
				<th width="80">行政用水量</th>
				<th width="80">军区用水量</th>
				<th width="80">特种用水量</th>
				<th width="80">销账总水量</th>
				<th width="80">生活用水销账</th>
				<th width="80">商业用水销账</th>
				<th width="80">工业用水销账</th>
				<th width="80">行政用水销账</th>
				<th width="80">军区用水销账</th>
				<th width="80">特种用水销账</th>
				<th width="80">垃圾费销账</th>
				<th width="80">污水费销账</th>
				<th width="80">资源费销账</th>
				<th width="80">销账总金额</th>
			</thead>
			<tbody>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
				<tr>
					<td align="center">JF0100000987-201401-02</td>
					<td align="center">12345678</td>
					<td align="center">增值税发票</td>
					<td align="center">2014-01-23</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="center" class="split">司徒收菲</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right">12345</td>
					<td align="right" class="split">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">12345.67</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right">123.45</td>
					<td align="right" class="split">1234567.89</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="center" class="split">&nbsp;</td>
					<td align="right"><div title="1234567891234567">1234567891234567</div></td>
					<td align="right"><div title="1234567891234567">1234567891234567</div></td>
					<td align="right"><div title="1234567891234567">1234567891234567</div></td>
					<td align="right"><div title="1234567891234567">1234567891234567</div></td>
					<td align="right"><div title="1234567891234567">1234567891234567</div></td>
					<td align="right"><div title="1234567891234567">1234567891234567</div></td>
					<td align="right" class="split"><div title="1234567891234567">1234567891234567</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567891234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567.89</div></td>
					<td align="right"><div title="1234567891234567.89">1234567.89</div></td>
					<td align="right" class="split"><div title="1234567891234567.89">1234567891234567.89</div></td>
				</tr>
			</tfoot>
		</table>
	</div>
	<div class="xgrid">
		<div class="page">
			<a href="#">第一页</a>
			<a href="#">上一页</a>
			<input class="pageIndex" value="1"/> / <input class="pageCount" readonly="readonly" value="98765" />
			<a href="#">下一页</a>
			<a href="#">第未页</a>
		</div>
	</div>
	
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