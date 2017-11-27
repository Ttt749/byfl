<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Thinker
  Date: 2017/3/28
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reference/css/nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reference/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/reference/js/jquery-2.2.4.js"></script>
    <script src="${pageContext.request.contextPath}/reference/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="top-nav">
    <p>毕业生分流系统</p>
    <ul>
        <li><a href="http://localhost:8080/byfl/session/logout">退出</a></li>
    </ul>
</div>
<div class="content">
    <ul class="leval" id="left-nav" style="overflow: hidden">
        <li class="frame-model" data-title="mapShow">
            <div class="leval-div"><span>地图显示</span></div>
        </li>
        <li class="model frame-model" data-title="graduateInfoManage">
            <div class="leval-div"><span>毕业生信息管理</span></div>
        </li>
        <li class="frame-model" data-title="cityMannge">
            <div class="leval-div"><span>城市信息管理</span></div>
        </li>
        <li class="model frame-model" data-title="userManage">
            <div class="leval-div"><span>用户信息管理</span></div>
        </li>

        <li class="frame-model" data-title="details">
            <div class="leval-div"><span>说明</span></div>
        </li>
    </ul>

    <div id="show-and-hide" style="cursor: pointer; position: absolute;background-color:rgba(35, 35, 35, 0.9);top:10px;left:220px;width:30px;height:30px;border-radius:0 100% 100% 0;">
        <div style="background-color: red;height:18px;width:18px;border-radius: 100%;margin-top: 6px;margin-left: 4px"></div>
    </div>

    <div class="main-content">
        <iframe id = "main-frame" src="${pageContext.request.contextPath}/map/show" frameborder="0" style="width:100%;height:100%"></iframe>
    </div>
</div>

<script>
    /**
     * iframe
     */
    $(function(){
        var params = {
            // 毕业生信息管理
            "graduateInfoManage":{
                "src":"",
                "url":"/byfl/graduate/show"
            },

            //城市信息管理
            "cityMannge":{
                "src":"",
                "url":"/byfl/city/show"
            },

            //地图显示
            "mapShow":{
                "url":"/byfl/map/show",
                "src":"dataManagement.html"
            },
            //用户管理
            "userManage": {
                "src": "userPage.jsp",
                "url": "/byfl/user/show"
            },
            //说明
            "details": {
                "url": "/byfl/session/details"
            }
        };

        $(".leval").on("click",".frame-model",function(){
            var title = $(this).data("title");
            console.log(params[title].url);
            $("#main-frame").attr("src",params[title].url);
        });

    });

    /**
     * 导航栏侧栏的显示和隐藏
     *
     */
    $(function(){
        var flags = false;
        $("#show-and-hide").on("click",this,function(){
            if(!flags){
                $("#left-nav").animate({width:0});
                $(this).animate({left:0});
                $(".main-content").animate({"margin-left":0});
                flags = true;
            }
            else{
                $("#left-nav").animate({width:"220px"});
                $(this).animate({left:"220px"});
                $(".main-content").animate({"margin-left":"220px"});
                flags = false;
            }
        })
    })

</script>
</body>
</html>