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
                title: "name",
                url: "http://www.bejson.com/"
            },
            simpleData: {//json 数据必须设置
                enable: true,//true / false 分别表示 使用 / 不使用 简单数据模式
                idKey: "id",
                pIdKey: "pid",
                rootPId: 0
            },
            view: {
                fontCss: getFont,
                nameIsHTML: true,
                showIcon: true,
                showLine: true,
                showTitle: true,
                selectedMulti: false
            }
        }
    };

    var zNodes = [
        {
            id: 1,
            pId: 0,
            name: "展开、折叠 自定义图标不同",
            open: true,
            iconOpen: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/1_open.png",
            iconClose: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/1_close.png"
        },
        {
            id: 11,
            pId: 1,
            name: "叶子节点1",
            icon: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/2.png"
        },
        {
            id: 12,
            pId: 1,
            name: "叶子节点2",
            icon: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/4.png"
        },
        {
            id: 13,
            pId: 1,
            name: "叶子节点3",
            icon: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/9.png"
        },
        {
            id: 2,
            pId: 0,
            name: "展开、折叠 自定义图标相同",
            open: true,
            icon: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/5.png"
        },
        {
            id: 21,
            pId: 2,
            name: "叶子节点1",
            icon: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/6.png"
        },
        {
            id: 22,
            pId: 2,
            name: "叶子节点2",
            icon: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/7.png"
        },
        {
            id: 23,
            pId: 2,
            name: "叶子节点3",
            icon: "${pageContext.request.contextPath}/assembly/plugins/zTree/v3/css/zTreeStyle/img/diy/8.png"
        },
        {id: 3, pId: 0, name: "不使用自定义图标", open: true},
        {id: 31, pId: 3, name: "叶子节点1"},
        {id: 32, pId: 3, name: "叶子节点2"},
        {id: 33, pId: 3, name: "叶子节点3"},
        {id: 4, pid: 1, name: "字体"},
        {
            id: 41, pId: 4, name: "粗体字", font: {'font-weight': 'bold'}
        },
        {
            id: 42, pId: 4, name: "斜体字", font: {'font-style': 'italic'}
        },
        {
            id: 43,
            pId: 4,
            name: "<span style='color:blue;margin-right:0px;'>view</span>.<span style='color:red;margin-right:0px;'>nameIsHTML</span>",
            font: {'font-style': 'italic'}
        }
    ];


    function getFont(treeId, node) {
        return node.font ? node.font : {};
    }

    // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
    $(document).ready(function () {
        zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
    });

</script>
</html>
