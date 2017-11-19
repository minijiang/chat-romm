<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"> 
 
<head> 
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> 
	<title>设置提比提量值</title> 
	
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
	<script type="text/javascript">
	function ok(){
		parent.close(); //简单的处理
		
		//模拟返回数据
		//returnWindow('[SH:100%]');
	}
	
	//添加提比提量规则
	function addtibi(sel){
		var name = $(sel).val();
		if(name=='添加新规则')return;
		var tbody = $('#tibiTable tbody');
		tbody.append('<tr><td>'+name+'</td><td>提比</td><td><input value="20%" /></td><td><button class="btn btn-small btn-red">移除</button></td></tr>');
	}
	</script>
</head> 
 
<body> 

<div style="width:90%; margin:0 auto;">
	<br/>
	<h2>设置提比提量值</h2>

	<input id="txtTibi" readonly="readonly" style="width:50%;" value="[SH:20][SY:30%][XZ:50%][GY:*]" />
	<button class="btn-icon btn-small btn-check btn-blue" onclick="ok();"><span></span>确定</button>
	<button class="btn-icon btn-small btn-cross btn-grey" onclick="ok();"><span></span>取消</button>
	
	<br/><br/>

	<table id="tibiTable" class="data display">
	<thead>
		<tr>
			<th>用水类型</th>
			<th>提取方式</th>
			<th>提取值</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<tr class="odd">
			<td>SH:生活用水</td>
			<td>提量</td>
			<td><input value="20" /></td>
			<td><button class="btn btn-small btn-red">移除</button></td>
		</tr>
		<tr class="even">
			<td>SY:商业用水</td>
			<td>提比</td>
			<td><input value="30%" /></td>
			<td><button class="btn btn-small btn-red">移除</button></td>
		</tr>
		<tr class="odd">
			<td>XZ:行政用水</td>
			<td>提比</td>
			<td><input value="50%" /></td>
			<td><button class="btn btn-small btn-red">移除</button></td>
		</tr>
		<tr class="even">
			<td>GY:工业用水</td>
			<td>取剩余</td>
			<td><input value="*" /></td>
			<td><button class="btn btn-small btn-red">移除</button></td>
		</tr>
	</tbody>
	</table>
	
	<select style="width:98%;" onchange="addtibi(this);">
		<option>添加新规则</option>
		<option>SH:生活用水</option>
		<option>SY:商业用水</option>
		<option>GY:工业用水</option>
		<option>XZ:行政用水</option>
		<option>JQ:军区用水</option>
		<option>TZ:特种用水</option>
	</select>
	
	<pre>操作说明：
1.提量   指定常量值，如：20，说明提取20吨做为该类型用水
2.提比   指定百分比，如：20%，说明从提量后剩余中提取20%做为该类型用水
3.取剩余 指定*号，说明把提量以及提比之后剩余量做为该类型用水
	</pre>

</div>

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