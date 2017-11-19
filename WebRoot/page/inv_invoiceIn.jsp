<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript">
	function checkUsername(){
		//验证用户名是否填写
		var StartNo=document.getElementById("startNo").value;
		var endNo=document.getElementById("endNo").value;
		
		if ((StartNo.length == 8 || StartNo.length == 10) || (endNo.length == 8 || endNo.length == 10)) {

				if (StartNo < endNo) {
					document.getElementById("count").value = (endNo+1) - StartNo;
						//ajax验证
			           doAjax();
				} else {
					alert("终止号码必须大于起始号码");
					StartNo = "";
					endNo = "";
				}
			} else {
			
				alert("输入的号码格式错误！(输入格式为8或10位数)");
			}
	}
	var xhr;
	function doAjax(){
		//创建XHR
		 xhr=new XMLHttpRequest();
		xhr.onreadystatechange=process;
		var startNo=document.getElementById("startNo").value;
		var endNo=document.getElementById("endNo").value;
// 		var url="SelectName?uname="+name;
// 		xhr.open("GET",url,true);
// 		xhr.send(null);
		xhr.open("post","InoutServlet",true);
		//设置请求头
		xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		xhr.send("uname="+startNo+"&uname1="+endNo);
		
	}
	//回调函数
	function process(){
		if(xhr.status==200 && xhr.readyState==4){
			var flag=xhr.responseText;
			//alert(flag);
			if(flag>0){
				document.getElementById("loginError").innerHTML="已存在，不可以再次添加";
			}else{
				document.getElementById("loginError").innerHTML="可用";
				if(flag==0){
				document.getElementById("sNo").value="普通发票";
				}else  if(flag==1){
				document.getElementById("sNo").value="增值税发票";
				}
			}
		}
	}
</script>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>湖南省自来水公司营销管理信息系统</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/reset.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/text.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/form.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/buttons.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/grid.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/layout.css"
	type="text/css" media="screen" title="no title" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/ui-darkness/jquery-ui-1.8.12.custom.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/plugin/jquery.visualize.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/plugin/facebox.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/plugin/uniform.default.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/plugin/dataTables.css"
	type="text/css" media="screen" title="no title" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/custom.css"
	type="text/css" media="screen" title="no title">

</head>

<body>
	
	<div id="wrapper">
		<%@include file="../index.jsp"%>
		<div id="masthead">
			<div>
				<span id="pagetitle"><a href="javascript:;">发票入库</a></span> <span
					id="welcome_span">欢迎回来，${emp.empName }</span>
			</div>
		</div>
		<!-- #masthead -->

		<div id="content" class="xgrid">


			<div class="x12">

				<h2>发票入库</h2>
				<form action="../addivinin.do" method="post">
					<div class="form label-inline uniform">

						<div class="field">
							<label for="id">入库时间</label> <input id="id" name="inDate"
								size="50" type="text" class="medium" disabled="disabled"
								value="<%out.print(new java.text.SimpleDateFormat("yyyy-MM-dd")
					.format(new Date()));%>" />
						</div>

						<div class="field">
							<label for="name">入库人员</label> <input id="name" name="lname"
								size="50" type="text" class="medium" disabled="disabled"
								value="${emp.empName }" /> <input id="name" name="inEmpID"
								size="50" type="hidden"
								value="${emp.id }" />
						</div>

						<div class="field">
							<label for="name">发票类型</label> <select class="medium"
								name="invoiceType">
								<option value="0">普通发票</option>
								<option value="1">增值税发票</option>
							</select>
						</div>

						<div class="field">
							<label for="name">发票起始号码</label> <input id="name1" name="startNo"
								size="50" type="text" class="medium" />
						</div>

						<div class="field">
							<label for="name">发票终止号码</label> <input id="name2" name="endNo"
								size="50" type="text" class="medium" onblur="jis(this)" />
						</div>

						<div class="field">
							<label for="name">发票张数</label> <input id="count" name="count"
								size="50" type="text" class="medium" disabled="disabled"
								value="填入发票号码后，动态显示" />
						</div>

						<div class="buttonrow">
							<button class="btn" type="submit">保存</button>
							<button class="btn btn-grey" onClick="history.back(-1);">返回</button>
						</div>

					</div>
				</form>
			</div>
			<!-- .x12 -->

		</div>
		<!-- #content -->

		<div id="footer">
			<div class="content_pad">
				<p>
					&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>. 技术支持 <a href="#">图灵教育</a>.
				</p>
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

	<script type="text/javascript">
		$(document).ready(function() {
			Dashboard.init();
		});

		function jis() {
			var StartNo = document.getElementById("name1").value;
			var StartNo1 = document.getElementById("name2").value;
			if (StartNo.length == 8 || StartNo.length == 10 || StartNo1.length == 8 || StartNo1.length == 10) {

				if (StartNo < StartNo1) {
					document.getElementById("count").value = StartNo1 - StartNo;
				} else {
					alert("终止号码必须大于起始号码");
					StartNo = "";
					StartNo1 = "";
				}
			} else {
			
				alert("输入的号码格式错误！(输入格式为8或10位数)");
			}
		}
	</script>

</body>

</html>