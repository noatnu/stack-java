<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/css/cssBootStrap.jsp" %>
<html>
<head>
    <title>ztree 第一个例子</title>
</head>

<div id="modeTreeNodeDiv" class="modal fade bs-example-modal-lg" data-backdrop="static" tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h3 class="modal-title">tree table</h3>
            </div>
            <form class="form-horizontal">
                <input type="hidden" name="id">
                <input type="hidden" name="pid" value="0">
                <div class="modal-body">
                    <div class="row">
                        <div class=" col-xs-12  col-sm-12  col-md-12  col-lg-12 ">
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="x-valid">
                                        <label class=" col-xs-2  col-sm-2  col-md-2  col-lg-2  control-label">
                                            名称<span class="symbol required"></span>
                                        </label>
                                        <div class=" col-xs-10  col-sm-10  col-md-10  col-lg-10 ">
                                            <input type="text" class="form-control" name="name"
                                                   placeholder="名称" required="required">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="x-valid">
                                        <label class=" col-xs-2  col-sm-2  col-md-2  col-lg-2  control-label">
                                            html文本<span class="symbol required"></span>
                                        </label>
                                        <div class=" col-xs-10  col-sm-10  col-md-10  col-lg-10 ">
                                            <input type="text" class="form-control" name="htmlText"
                                                   placeholder="html文本" required="required">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-default">
                    取消
                </button>
                <button type="button" class="btn btn-primary"
                        onclick="baseObj.saveData(this);">
                    保存
                </button>
            </div>
        </div>
    </div>
</div>

<body class="container">

<div class="row">

    <div class="col-xl-12 col-sm-12 col-lg-12 col-md-12" style="margin-top:10px;margin-bottom:10px;">
        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modeTreeNodeDiv" onclick="baseObj.showModel({pid:0});">
            新增
        </button>
    </div>

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

    var baseObj = {};

    function removeHoverDom() {

    }


    function zTreeOnClick() {

    }

    baseObj.config = {
        tree: $("#treeDemo"),
        model:$("#modeTreeNodeDiv")
    };


    baseObj.showModel = function (data) {
        var frm = baseObj.config.model.find("form") ;
        frm.clearAll();
        baseObj.initForm(data) ;
    };

    baseObj.initForm = function (data) {
        var frm = baseObj.config.model.find("form") ;
        frm.clearAll();
        frm.initForm(data);
    };
    baseObj.saveData = function () {
        var frm = baseObj.config.model.find("form") ;
        if (!frm.valid()){
            return false;
        }
        var data = formSerializeArray(frm) ;
        $.ajax({
            url: "${pageContext.request.contextPath}/treeNode/saveAndUpdate",
            type: "post",
            dataType: "json",
            data: {fomData:JSON.stringify(data)},
            success: function (result) {
                if (result.ret) {
                    baseObj.config.model.modal("hide") ;
                    baseObj.loadTree() ;
                }
            },
            error: function (result) {

            }
        });
    };

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
            url: "${pageContext.request.contextPath}/treeNode/getTreeNodeList",
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
        baseObj.loadTree();
    });


</script>
</html>
