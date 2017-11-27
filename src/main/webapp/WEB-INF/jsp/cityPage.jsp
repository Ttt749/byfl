
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
            <a href="http://localhost:8080/byfl/city/show"  role="button" class="btn btn-info" data-toggle="modal">刷新</a>
            <!--//添加-->
            <div class="modal fade" id="modal-container-996235" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document" style="z-index:111">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel" align="center">
                                添加城市
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form-insert" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="" placeholder="cityId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="" placeholder="cityName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">人数</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="cityPeople..">
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
                                删除城市
                            </h4>
                        </div>
                        <div class="modal-body">
                            <label id="delUser"></label>
                            <form class="form-horizontal">
                                <h4 align="center">确认删除该城市？</h4>
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
                                修改城市
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form-update" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="" placeholder="cityId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="" placeholder="cityName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">人数</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="cityPeople..">
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
                                查询城市
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form-select" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市id</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name="" placeholder="cityId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="" placeholder="cityName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">人数</label>
                                    <div class="col-sm-10">
                                        <input type="number" class="form-control" name placeholder="cityPeople..">
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
                                城市信息
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form id="form" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">城市id</label>
                                    <div class="col-sm-10">
                                        <input id="cityId"type="text" class="form-control" name="" placeholder="cityId..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">城市名</label>
                                    <div class="col-sm-10">
                                        <input id="cityName"type="text" class="form-control" name="" placeholder="cityName..">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">人数</label>
                                    <div class="col-sm-10">
                                        <input id="cityPeople" type="number" class="form-control" name="" placeholder="cityPeople..">
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
                    <th>城市id</th>
                    <th>城市名</th>
                    <th>人数</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="city" items="${cityList}">
                    <tr id="${city.cityId}">
                        <td>${city.cityId}</td>
                        <td>${city.cityName}</td>
                        <td>${city.cityPeople}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript">
    var cityId=null;
    var trs = document.getElementById('table1').getElementsByTagName('tr');
    window.onload = function(){
        for( var i=1; i<trs.length; i++ ){
            trs[i].onmousedown = function(){
                tronmousedown(this);
                cityId=$(this).attr("id");
                console.log(cityId);
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
        var city_json = {
            "cityId": inputs[0],
            "cityName":inputs[1],
            "cityPeople":inputs[2]
        };

        //js对象转换成JSON字符串
        var jason_str = JSON.stringify(city_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/city/insert",
            cache : true,
            type : "post",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            data : jason_str,
            success : function (data){
                console.log(data);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/city/show");
            },
            error:function () {
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/city/show");
            }
        });
    })
    $("#update").click(function () {
        var inputs = [];
//获取修改后的信息
        $("#form-update .form-control").each(function(){
            inputs.push($(this).val());
        });
        var city_json = {
            "cityId": inputs[0],
            "cityName":inputs[1],
            "cityPeople":inputs[2]
        };

        //js对象转换成JSON字符串
        var jason_str = JSON.stringify(city_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/city/update",
            cache : true,
            type : "post",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            data : jason_str,
            success : function (data){
                console.log(data);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/city/show");
            },
            error:function () {
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/city/show");
            }
        });
    })
    $("#select").click(function () {
        var inputs = [];
//获取修改后的信息
        $("#form-select .form-control").each(function(){
            inputs.push($(this).val());
        });
        var city_json = {
            "cityId": inputs[0],
            "cityName": "",
            "cityPeople": ""
        };

        //js对象转换成JSON字符串
        var jason_str = JSON.stringify(city_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/city/select",
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

                $("#cityId").val(result.city.cityId);
                $("#cityName").val(result.city.cityName);
                $("#cityPeople").val(result.city.cityPeople);
                $("#modal-container-996232").modal('hide');
                $("#modal-container-996231").modal({
                    keyboard: true
                });
//              $("#modal-container-996231").attr("aria-hidden")=false;
            },
            error:function () {
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/city/show");
            }
        });
    })
    $("#delete").click(function () {

        var city_json={
            "cityID": cityId,
            "cityName": "",
            "cityPeople": ""
        };
        //s对象转换成JSON字符串
        var jason_str = JSON.stringify(city_json);

        //Ajax发送数据给后台
        $.ajax({
            url :"http://localhost:8080/byfl/city/delete",
            cache : true,
            type : "post",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            data : jason_str,
            success : function (data){
                console.log(data);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/city/show");
            },
            error : function (data){
                console.log(data.result);
                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/city/show");
            }
        });
    })
</script>
<!--选中一行-->
</body>
</html>