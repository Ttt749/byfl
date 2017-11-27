
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/CSS/bootstrap.css">
    <script src="${pageContext.request.contextPath}/user/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/user/CSS/user.css"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <a id="modal-996235" href="#modal-container-996235" type="button" role="button" class="btn btn-info" data-toggle="modal">添加</a>
            <a id="modal-996233" href="#modal-container-996233" type="button" role="button" class="btn btn-info" data-toggle="modal">修改</a>
            <a id="modal-996232" href="#modal-container-996232" type="button" role="button" class="btn btn-info" data-toggle="modal">查询</a>
            <a id="modal-996234" href="#modal-container-996234"  role="button" class="btn btn-info" data-toggle="modal">删除</a>
            <a href="http://localhost:8080/byfl/graduate/show"  role="button" class="btn btn-info" data-toggle="modal">刷新</a>
            <!--//添加-->
            <div class="modal fade" id="modal-container-996235" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document" style="z-index:111">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel" align="center">
                                添加毕业生
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form-insert" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="" placeholder="graduateId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="" placeholder="graduateName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">性别</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name placeholder="graduateSex..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">年级</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="graduateGrade..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">院系</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name placeholder="graduateSchool..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市Id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="graduateCityId..">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button id="insert" type="button" class="btn btn-primary">保存</button>
                        </div>
                    </div>

                </div>

            </div>
            <!--删除-->
            <div class="modal fade" id="modal-container-996234" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2" aria-hidden="true">
                <div class="modal-dialog" style="z-index:111">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabe2">
                                删除用户
                            </h4>
                        </div>
                        <div class="modal-body">
                            <label id="delUser"></label>
                            <form class="form-horizontal">
                                <h4 align="center">确认删除该用户？</h4>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button id="delete" type="button" class="btn btn-primary">确定</button>
                        </div>
                    </div>

                </div>

            </div>
            <!--修改-->
            <div class="modal fade" id="modal-container-996233" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3" aria-hidden="true">
                <div class="modal-dialog" style="z-index:111">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabe3" align="center">
                                修改用户
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form-update" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="" placeholder="graduateId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="" placeholder="graduateName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">性别</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name placeholder="graduateSex..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">年级</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="graduateGrade..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">院系</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name placeholder="graduateSchool..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市Id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="graduateCityId..">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button id="del" type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button id="update" type="button" class="btn btn-primary">修改</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--查询-->
            <div class="modal fade" id="modal-container-996232" tabindex="-1" role="dialog" aria-labelledby="myModalLabe4" aria-hidden="true">
                <div class="modal-dialog" style="z-index:111">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabe4" align="center">
                                查询用户
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form-select" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="" placeholder="graduateId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="" placeholder="graduateName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">性别</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name placeholder="graduateSex..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">年级</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="graduateGrade..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">院系</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name placeholder="graduateSchool..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市Id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="graduateCityId..">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button id="select" type="button" class="btn btn-primary">查询</button>
                        </div>
                    </div>

                </div>

            </div>
            <%--查询结果--%>
            <div class="modal fade" id="modal-container-996231" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3" aria-hidden="true">
                <div class="modal-dialog" style="z-index:111">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabe1" align="center">
                                用户信息
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">id</label>
                                    <div class="col-sm-10">
                                        <input id="graduateId" type="number" class="form-control" name="" placeholder="graduateId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10">
                                        <input id="graduateName" type="text" class="form-control" name="" placeholder="graduateName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">性别</label>
                                    <div class="col-sm-10">
                                        <input id="graduateSex" type="text" class="form-control" name placeholder="graduateSex..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">年级</label>
                                    <div class="col-sm-10">
                                        <input id="graduateGrade" type="number" class="form-control" name placeholder="graduateGrade..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">院系</label>
                                    <div class="col-sm-10">
                                        <input id="graduateSchool" type="text" class="form-control" name placeholder="graduateSchool..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市id</label>
                                    <div class="col-sm-10">
                                        <input id="graduateCityId" type="text" class="form-control" name placeholder="graduateCityId..">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
                        </div>
                    </div>
                </div>
            </div>
            <table class="table table-hover" id="table1">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年级</th>
                    <th>院系</th>
                    <th>城市Id</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="graduate" items="${graduateList}">
                    <tr id="${graduate.graduateId}">
                        <td>${graduate.graduateId}</td>
                        <td>${graduate.graduateName}</td>
                        <td>${graduate.graduateSex}</td>
                        <td>${graduate.graduateGrade}</td>
                        <td>${graduate.graduateSchool}</td>
                        <td>${graduate.graduateCityId}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript">
    var graduateId=null;
    var trs = document.getElementById('table1').getElementsByTagName('tr');
    window.onload = function(){
        for( var i=1; i<trs.length; i++ ){
            trs[i].onmousedown = function(){
                tronmousedown(this);
                graduateId=$(this).attr("id");
                console.log(graduateId);
            }
        }
    }
    function tronmousedown(obj){
        for( var o=1; o<trs.length; o++ ){
            if( trs[o] == obj ){
                trs[o].style.backgroundColor = '#DFEBF2';
            }
            else{
                trs[o].style.backgroundColor = '';
            }
        }
    }
    $("#insert").click(function () {
        var inputs = [];
//获取修改后的信息
        $("#form-insert .form-control").each(function(){
            inputs.push($(this).val());
        });
        var graduate_json = {
            "graduateId": inputs[0],
            "graduateName":inputs[1],
            "graduateSex":inputs[2],
            "graduateGrade": inputs[3],
            "graduateSchool":inputs[4],
            "graduateCityId":inputs[5]
        };

        //js对象转换成JSON字符串
        var jason_str = JSON.stringify(graduate_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/graduate/insert",
            cache : true,
            type : "post",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            data : jason_str,
            success : function (data){
                console.log(data);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/graduate/show");
            },
            error:function () {
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/graduate/show");
            }
        });
    })
    $("#update").click(function () {
        var inputs = [];
//获取修改后的信息
        $("#form-update .form-control").each(function(){
            inputs.push($(this).val());
        });
        var graduate_json = {
            "graduateId": inputs[0],
            "graduateName":inputs[1],
            "graduateSex":inputs[2],
            "graduateGrade": inputs[3],
            "graduateSchool":inputs[4],
            "graduateCityId":inputs[5]
        };

        //js对象转换成JSON字符串
        var jason_str = JSON.stringify(graduate_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/graduate/update",
            cache : true,
            type : "post",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            data : jason_str,
            success : function (data){
                console.log(data);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/graduate/show");
            },
            error:function () {
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/graduate/show");
            }
        });
    })
    $("#select").click(function () {
        var inputs = [];
//获取修改后的信息
        $("#form-select .form-control").each(function(){
            inputs.push($(this).val());
        });
        var graduate_json = {
            "graduateId": inputs[0],
            "graduateName":"",
            "graduateSex":"",
            "graduateGrade": "",
            "graduateSchool":"",
            "graduateCityId":""
        };

        //js对象转换成JSON字符串
        var jason_str = JSON.stringify(graduate_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/graduate/select",
            cache : true,
            type : "post",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            data : jason_str,
            success : function (data){
                console.log(data);
                if(typeof data == 'string'){
                    var result=JSON.parse(data);
                }else {
                    var result= data;
                }
                $("#graduateId").val(result.graduate.graduateId);
                $("#graduateName").val(result.graduate.graduateName);
                $("#graduateSex").val(result.graduate.graduateSex);
                $("#graduateGrade").val(result.graduate.graduateGrade);
                $("#graduateSchool").val(result.graduate.graduateSchool);
                $("#graduateCityId").val(result.graduate.graduateCityId);
                $("#modal-container-996232").modal('hide');
                $("#modal-container-996231").modal({
                    keyboard: true
                });
//              $("#modal-container-996231").attr("aria-hidden")=false;
            },
            error:function () {
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/graduate/show");
            }
        });
    })
    $("#delete").click(function () {

        var graduate_json = {
            "graduateId": graduateId,
            "graduateName":"",
            "graduateSex":"",
            "graduateGrade": "",
            "graduateSchool":"",
            "graduateCityId":""
        };
        //s对象转换成JSON字符串
        var jason_str = JSON.stringify(graduate_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/graduate/delete",
            cache : true,
            type : "post",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            data : jason_str,
            success : function (data){
                console.log(data);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/graduate/show");
            },
            error : function (data){
                console.log(data.result);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/graduate/show");
            }
        });
    })
</script>
<!--选中一行-->
</body>
</html>