<!DOCTYPE html>

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
	table.data thead th { vertical-align:middle; text-align:center; }
	</style>
	<script type="text/javascript">
	function setTibi(){
		showWindow({url:'../page/sys_setTibi.html', width:600, height:500});
	}
	</script>
</head> 
 
<body> 

<div id="wrapper">
	
	<div id="header">
		
	<%@ include file="../index.jsp" %>		
	</div> <!-- #header -->	
	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">快捷新户</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName}</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid" >

		<div class="x12">
			
			<h2>快捷新户</h2>

				<table width="100%">
				<thead>
					<tr>
						<th width="60"></th>
						<th width="220"></th>
						<th width="60"></th>
						<th width="220"></th>
						<th width="60"></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>用户编码</td>
						<td><input readonly="readonly" value="自动生成" disabled="disabled" /></td>
						<td>用户类型</td>
						<td><select style="width:156px;">
								<option>私户</option>
								<option>公户</option>
							</select></td>
						<td>所属辖区</td>
						<td><select style="width:156px;">
								<option>城东区</option>
								<option>城南区</option>
								<option>城西区</option>
								<option>城北区</option>
								<option>新开发区</option>
								<option>旧城区</option>
								<option>特别商户区</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>用户名称</td>
						<td><input value="张三" /></td>
						<td>开户时间</td>
						<td><input readonly="readonly" value="2010年10月27日"  disabled="disabled" /></td>
						<td>收款方式</td>
						<td><select style="width:156px;">
								<option>坐收</option>
								<option>走收</option>
								<option>银行代扣</option>
							</select></td>
					</tr>
					<tr>
						<td>联系电话</td>
						<td><input value="13012345678" /></td>
						<td>开户银行</td>
						<td><input value="建设银行" /></td>
						<td>银行账号</td>
						<td><input value="1234567890123456789" /></td>
					</tr>
					<tr>
						<td>短信电话</td>
						<td><input value="13012345678" /></td>
						<td>用户地址</td>
						<td colspan="3"><input size="68"  
											value="新开发区国际IT中心图灵国际总部办公楼2219号" /></td>
					</tr>
					<tr>
						<td>档案编号</td>
						<td><input value="A4954-394P1#4" /></td>
						<td>合同编号</td>
						<td><input value="W20101027-19" /></td>
						<td>签订日期</td>
						<td><input onClick="WdatePicker();" value="2014-02-27" /></td>
					</tr>
					<tr>
						<td style="vertical-align:middle;">提比提量</td>
						<td colspan="5">
							<span class="text_button">
							<input id="txtTibi" style="width:668px;" readonly="readonly" value="[SH:80%][SY:10%][GY:10%]" />
							<button onClick="setTibi();">设定</button></span>
						</td>
					</tr>
					<tr>
						<td>水表编号</td>
						<td><input readonly="readonly" disabled="disabled" value="自动生成" /></td>
						<td>表身码</td>
						<td><input value="01010001" /></td>
						<td>起始底码</td>
						<td><input value="2" /></td>
					</tr>
					<tr>
						<td>水表类型</td>
						<td><select style="width:158px;">
								<option>DN10</option>
								<option>DN15</option>
								<option>DN20</option>
								<option>DN40</option>
								<option>DN80</option>
								<option>DN100</option>
								<option>DN200</option>
								<option>DN500</option>
								<option>DN1000</option>
							</select></td>
						<td>水表口径</td>
						<td><input value="40" /></td>
						<td>最大码值</td>
						<td><input value="99999" onClick="WdatePicker();" /></td>
					</tr>
					<tr>
						<td>装表日期</td>
						<td><input value="2010-10-27" /></td>
						<td>水表厂家</td>
						<td colspan="3"><input size="68" value="城至水表厂" /></td>
					</tr>
				</tbody>
				</table>
				
				<div style=" margin:20px 0px 0px 66px;" >
					<button class="btn">创建新户</button>
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