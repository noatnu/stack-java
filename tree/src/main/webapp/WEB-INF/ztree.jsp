<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/css/bootstrap4.jsp" %>
<html>
<head>
    <title>ztree</title>
</head>
<body class="container" style="text-align: center">
<div class="row">

    <div class="col-xl-12 col-sm-12">
        <div class="card" style="margin-top: 20px;">

            <ul style="margin-top:20px;margin-right:30px;">
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/ztree/hello">hello</a></li>
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/ztree/jsonShow">jsonShow</a></li>
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/ztree/custom">自定义</a></li>
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/ztree/beforeEditName">添加节点</a></li>
            </ul>

            <ul style="margin-top:20px;margin-right:30px;">
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/sys/home">返回</a></li>
            </ul>

        </div>
    </div>

</div>
</body>
</html>
