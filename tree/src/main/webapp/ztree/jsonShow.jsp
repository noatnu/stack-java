<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/css/cssBootStrap.jsp" %>
<html>
<head>
    <title>ztree </title>
</head>
<body class="container">
<div class="row">
    <div class="col-xl-12 col-sm-12" style="margin-top:10px;margin-bottom:10px;">
        <ul id="treeDemo" class="ztree"></ul>
    </div>
    <div class="col-xl-12 col-sm-12" style="margin-top:10px;margin-bottom:10px;">
        <div class="panel-footer">
            <ul style="margin-top:20px;margin-right:20px;">
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/sys/ztree">返回</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
<script>

    var zTreeObj;

    // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
    var setting = {
        data: {
            key: {
                title: "title"
            },
            simpleData:{//json 数据必须设置
                enable:true,//true / false 分别表示 使用 / 不使用 简单数据模式
                idKey:"id",
                pIdKey:"pid",
                rootPId:0
            }
        }
    };

    $.ajax({
        url: "${pageContext.request.contextPath}/ztree/ZTreeData",
        type: "post",
        dataType: "json",
        data: {},
        success: function (zNodes) {
            // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
            $(document).ready(function () {
                zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
            });
        },
        error: function (result) {

        }
    });

</script>
</html>
