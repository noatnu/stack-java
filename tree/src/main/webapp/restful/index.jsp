<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/css/cssBootStrap.jsp" %>
<html>
<head>
</head>
<body class="container">
<div class="row">

    <div class="col-xl-12 col-sm-12" style="margin-top:10px;margin-bottom:10px;">

        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
            添加
        </button>
    </div>

    <div class="col-xl-12 col-sm-12" style="margin-top:10px;margin-bottom:10px;">
        <form class="form-horizontal">
            <table class="table table-bordered" id="oTable" style="height: auto">

            </table>
        </form>
    </div>
    <div class="col-xl-12 col-sm-12" style="margin-top:10px;margin-bottom:10px;">
        <div class="panel-body panel">
            <ul style="margin-top:20px;margin-right:20px;">
                <li class="list-group-item"><a href="${pageContext.request.contextPath}/sys/home">返回</a></li>
            </ul>
        </div>
    </div>
</div>
<script>
    var obj = {};

    obj.init = function () {
        $('#oTable').bootstrapTable({
            url: '${pageContext.request.contextPath}/api/user/list',         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: function () {

            },//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            contentType: "application/x-www-form-urlencoded",
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height: 600,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            columns: [{
                checkbox: true
            },
                {
                    field: 'age',
                    title: '年龄'
                },
                {
                    field: 'username',
                    title: '用户名'
                },
                {
                    field: 'id',
                    title: '标识符'
                },
                {
                    field: 'id',
                    title: '操作',
                    formatter: function (value, row, index) {
                        var str = "";
                        str += "<div>";
                        str += "<a class='btn-default btn' onclick='obj.delete(" + row.id + ")'" + ">" + "<i class='fa fa-trash-o fa-fw'>" + '</i>' + "</a>";
                        str += "<a class='btn-default btn' onclick='obj.edit(" + row.id + ")'" + ">" + "<i class='fa fa-pencil fa-fw'>" + '</i>' + "</a>";
                        str += "</div>";
                        return str;
                    }
                }
            ]
        });
    };

    obj.delete = function (id) {
        console.log(id);
    };

    obj.edit = function (id) {
        console.log(id);
    };

    $(document).ready(function () {
        obj.init();
    });
</script>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    简单测试
                </h4>
            </div>
            <div class="modal-body">
                <form  class="form-horizontal">
                    <div  class="form-group">
                        <div class="x-valid">
                            <label class="control-label col-sm-1">
                                年龄
                            </label>
                            <div class="col-sm-11">
                                <input type="text" class="form-control" name="age" placeholder="年龄" required="required">
                            </div>
                        </div>
                    </div>
                    <div  class="form-group">
                        <div class="x-valid">
                            <label class="control-label col-sm-1">
                                用户名
                            </label>
                            <div class="col-sm-11">
                                <input type="text" class="form-control" name="username" placeholder="用户名" required="required">
                            </div>
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>
