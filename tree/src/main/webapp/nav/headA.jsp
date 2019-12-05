<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/css/cssBootStrap.jsp" %>
<html>
<body>
<div class="container">
    <div class="row">
        <div class="form-group">
            <div class="col-sm-12" style="margin-top:10px;">

            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12" style="margin-bottom:40px;">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="${pageContext.request.contextPath}/sys/home">首页</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/sys/easy">easy 树</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/sys/jquery">jquery 树</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/sys/ztree">ztree 树</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/api/user/index">restful</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>