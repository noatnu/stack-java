<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/css/bootstrap4.jsp" %>
<html>
<head>
    <title>jquery tree home (bootstrap style)</title>
</head>
<body class="container" style="text-align: center">
<div class="row">

    <div class="col-xl-12 col-sm-12">
        <div class="card" style="margin-top: 20px;">

            <ul style="margin-top:20px;margin-right:30px;">
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/jquery/tree/hello">hello</a></li>
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/jquery/tree/jsonShowTree">json方式 展示 树</a></li>
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/jquery/tree/getSelectTree">获取所选树</a></li>
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/jquery/tree/handleEvent">事件处理</a></li>
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/jquery/tree/appendNode">appendNode</a></li>
            </ul>

            <ul style="margin-top:20px;margin-right:30px;">
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/sys/home">返回</a></li>
            </ul>

        </div>
    </div>

</div>
</body>
</html>
