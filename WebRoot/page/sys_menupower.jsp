<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>

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
<jsp:include page="../index.jsp"/>
	
	<div id="masthead">
		<div>
			<span id="pagetitle"><a href="javascript:;">菜单权限</a></span>
			<span id="welcome_span">欢迎回来，${emp.empName }</span>
		</div>
	</div> <!-- #masthead -->	
	
	<div id="content" class="xgrid">
	 		
		<div class="x12">
		
			<div id="facebox_delete" style="display: none">
				<div style="height:80px;text-align:center;padding-top:50px;">
					确认删除吗？
				</div>
				
				<div class="dialogbutton center">
					<a class="btn" href="javascript:closeDialog();" style="width:60px;">是</a>  
					<a class="btn btn-grey" href="javascript:closeDialog();" style="width:60px;">否</a>
				</div>
			</div>
			
			<h2>菜单权限</h2>
			
			
		<p>
			<div style="float:left;">
				<button class="btn-icon btn-star" onClick="toupdateEmpMenuPowers();"><span></span>批量设置菜单权限</button>
			</div>

			
			<div style="float:right;">
				部门 
				<select id="type" class="medium" name="id"  onchange="cha()" >
						<option value="0">所有部门</option>
						<c:forEach items="${dlist }" var="dept">
						<option value="${dept.id }" <c:if test='${dept.id==dID }'>selected='selected'</c:if>>${dept.deptName }</option>
						</c:forEach>
				</select>
			</div>
		</p>

				
			<table class="data display">
				<thead>
					<tr>
						<th><input type="checkbox" id="checkbox01" onChange="$(':checkbox').attr('checked', this.checked)" /></th>
						<th>员工ID</th>
						<th>员工工号</th>
						<th>员工姓名</th>
						<th>所属部门</th>
						<th>备注</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${elist }" var="emp" varStatus="i">
					<c:if test="${i.index%2==0 }">
						<tr class="odd gradeC">
					</c:if>
					<c:if test="${i.index%2!=0 }">
						<tr class="even gradeX">
					</c:if>
						<td><input type="checkbox" onclick="onchecked()" name="empID" value="${emp.id}"/></td>
						<td>${emp.id }</td>
						<td>${emp.empNo }</td>
						<td>${emp.empName }</td>
						<td>${emp.deptName }</td>
						<td>${emp.remark }</td>
						<td class="center">
							<button class="btn-icon btn-small btn-blue btn-star" onClick="location='findSyMenuAuthority.do?id=${emp.id}';"><span></span>设置菜单权限</button>
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

<script src="js/jquery/jquery-1.5.2.min.js"></script>
<script src="js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="js/misc/excanvas.min.js"></script>
<script src="js/jquery/facebox.js"></script>
<script src="js/jquery/jquery.visualize.js"></script>
<script src=".js/jquery/jquery.dataTables.min.js"></script>
<script src="js/jquery/jquery.tablesorter.min.js"></script>
<script src="js/jquery/jquery.uniform.min.js"></script>
<script src="js/jquery/jquery.placeholder.min.js"></script>

<script src="js/widgets.js"></script>
<script src="js/dashboard.js"></script>

<script type="text/javascript">
	
$(document).ready ( function () 
{
	Dashboard.init ();		
});
function findEmpByid(id) {
	location.href='selempm.do?id='+id;
}
function onchecked() {
		var checkbox01=document.getElementById("checkbox01");
		var empIDs=document.getElementsByName("empID");
		var j=0;
		for ( var i = 0; i < empIDs.length; i++) {
			if(empIDs[i].checked){
				j+=1;
			}
		}
		if(j==empIDs.length){
			checkbox01.checked=true;
		}else{
			checkbox01.checked=false;
		}
		
	}
	function toupdateEmpMenuPowers() {
		var empID=document.getElementsByName("empID");
		var empIDs="";
		for ( var i = 0; i < empID.length; i++) {
			if(empID[i].checked){
				empIDs+=empID[i].value+",";
			}
		}
		if(empIDs==null || empIDs==""){
		
		}else{
			location.href="toupdateEmpMenuPowers.do?empIDs="+empIDs;
		}
	}

function cha(){

   var id = document.getElementById("type").value;
   location.href="selempdeptid1.do?id="+id;
}
</script>

</body> 
 
</html>