<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/css/cssBootStrap.jsp" %>
<html>
<head>
    <title>ztree 第一个例子</title>
</head>
<body class="container">
<div class="row">

    <div class="col-xl-12 col-sm-12 col-lg-12 col-md-12" style="margin-top:10px;margin-bottom:10px;">
        <ul id="treeDemo" class="ztree"></ul>
    </div>

    <div class="col-xl-12 col-sm-12 col-lg-12 col-md-12" style="margin-top:10px;margin-bottom:10px;">
        <div class="panel-footer">
            <ul style="margin-top:20px;margin-right:20px;">
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/sys/ztree">返回</a></li>
            </ul>
        </div>
    </div>
</div>
</body>

<script>

    var baseObj = {} ;
    
    function removeHoverDom() {
        
    }
    
    
    function zTreeOnClick() {
        
    }

    baseObj.config = {
        tree:$("#treeDemo")
    } ;

    baseObj.loadTree = function () {
        var zTreeObj;

        // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
        var setting = {
            //页面上的显示效果
            view: {
                selectedMulti: true,
                removeHoverDom: removeHoverDom,//离开节点时的操作
                expandSpeed: "slow",
                fontCss: {color: "red"}
            },
            check: {
                enable: false
            },
            callback: {
                onClick: zTreeOnClick
            },
            data: {
                key: {
                    name: "name"
                },
                simpleData: {//json 数据必须设置
                    enable: true,//true / false 分别表示 使用 / 不使用 简单数据模式
                    idKey: "id",
                    pIdKey: "pid",
                    rootPId: 0
                }
            }
        };
        $.ajax({
            url:"${pageContext.request.contextPath}/ztree/getTreeNodeList",
            type: "get",
            dataType: "json",
            data: {pid: 0},
            success: function (result) {
                if (result.ret) {
                    $.fn.zTree.destroy();
                    zTreeObj = $.fn.zTree.init(baseObj.config.tree, setting, result.data);
                    zTreeObj.expandAll(true);
                }
            },
            error: function (result) {

            }
        });
    };


    $(document).ready(function () {
        baseObj.loadTree() ;
    }) ;


</script>
</html>
