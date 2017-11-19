<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

    
        <div id="header">
		
		<div class="content_pad">
			<h1><a href=".。/workspace.jsp">湖南省自来水公司营销管理信息系统</a></h1>
			
			<ul id="nav">
				<c:forEach items="${smlist }" var="menu">
				<li class="nav_dropdown nav_icon">
				    <c:if test="${menu.id<=203 }">
					<a href="javascript:;"><span class="ui-icon ui-icon-wrench"></span>${menu.menuName }</a>
					</c:if>
					<div class="nav_menu">
						<ul>
						
						   <c:forEach items="${smlist }" var="par">
						   <c:if test="${par.flowID==menu.orderIndex }">
							<li><a href="${pageContext.request.contextPath }/${par.url }">${par.menuName }</a></li>
							</c:if>
							</c:forEach>
							
						</ul>
					</div>
					
				</li>
				
                </c:forEach>

				
				<li class="nav_current nav_dropdown nav_icon_only">
					<a href="javascript:;">&nbsp;</a>
					
					<div class="nav_menu">
						<ul>
							<li><a href="workspace.jsp">我的工作台</a></li>
							<li><a href="updapwd.do">修改密码</a></li>
							<li><a href="clieremp.do">退出系统</a></li>
						</ul>
					</div> <!-- .menu -->
				</li>
			</ul>
		</div> <!-- .content_pad -->
		
	</div>

