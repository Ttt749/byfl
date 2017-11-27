<%--
  Created by IntelliJ IDEA.
  User: WT
  Date: 2017/9/17
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <script src="${pageContext.request.contextPath}/js/lib/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/raphael-min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/res/chinaMapConfig.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/map-min.js"></script>
    <style>
        *{margin:0;padding:0;border: none;}
        body { color: #333; text-align: center; font: 12px "微软雅黑";background-color: #dcf5ed; }
        .mapTipText{width: 280px;height: 110px;background-color: #ffffff;}
        .mapTipText .mapTipImg{height: 66px; width: 66px; float: left;border: 2px solid #ffffff; border-radius: 50%;overflow: hidden;margin: -12px 5px 0 -12px;}
        .mapTipText .mapTipImg img{width: 100%;height: 100%;}
        .mapTipText .mapTipList{float: left;margin-left: 4px;}
        .mapTipText .mapTipList h2{text-align: left;}
        .mapTipText .mapTipList h2 a{font-size: 24px; color: #262626;text-decoration:none;}
        .mapTipText .mapTipList h2 a:hover{ color: #0085d2;}
        .mapTipText .mapTipList h2 a span{font-size: 16px;margin-left: 3px;}
        .mapTipText .mapTipList ul{ width: 203px;padding-right: 10px;}
        .mapTipText .mapTipList ul li{list-style: none;float: left;padding: 7px 3px 0 3px;}
        .mapTipText .mapTipList ul li a{color: #262626;text-decoration:none;}
        .mapTipText .mapTipList ul li a:hover{background-color:#2ebcfe;color:#ffffff;}
    </style>
    <script type="text/javascript">
        $(function(){
            $('#ChinaMap').SVGMap({
                mapWidth: 806,
                mapHeight: 396
            });
        });
    </script>
</head>
<body>
<div class="wrap" style="margin-top: 50px;">
    <div style="text-align:center;clear:both;">
        <!--<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>-->
        <!--<script src="/follow.js" type="text/javascript"></script>-->
    </div>

    <div class="itemCon" style="float: left">
        <div id="ChinaMap" style="margin: 50px;"></div>
        <div id="stateTip" style="position: absolute;left: 100%;text-align: left;display: inline;"></div>
    </div>

    <div id="mapTipContent" style="width: 900px;margin: 0 auto;display: none">
        <div class="mapTipText mapTipText24">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">北京</a>&nbsp;人数：<lable id="beijing"></lable></h2>
                <ul>
                    <li><a href=""></a></li>
                </ul>
            </div>
        </div>
        <div class="mapTipText mapTipText21">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">上海</a>&nbsp;人数：<lable id="shanghai"></lable></h2>
                <ul>
                    <li><a href=""></a></li>
                </ul>
            </div>
        </div>
        <div class="mapTipText mapTipText30">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">广东</a></h2>
                <ul>
                    <li><a href=""></a></li>
                    <li><a href="">广州</a>&nbsp;人数：<lable id="guangzhou"></lable></li>
                    <li><a href="">深圳</a>&nbsp;人数：<lable id="shenzhen"></lable></li>
                </ul>
            </div>
        </div>
        <div class="mapTipText mapTipText17">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">四川</a></h2>
                <ul>
                    <li><a href=""></a></li>
                    <li><a href="">成都</a>&nbsp;人数：<lable id="chengdu"></lable></li>
                </ul>
            </div>
        </div>
        <div class="mapTipText mapTipText10">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">陕西</a></h2>
                <ul>
                    <li><a href=""></a></li>
                    <li><a href="">西安</a>&nbsp;人数：<lable id="xian"></lable></li>
                </ul>
            </div>
        </div>
        <div class="mapTipText mapTipText5">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">江苏</a></h2>
                <ul>
                    <li><a href=""></a></li>
                    <li><a href="">南京</a>&nbsp;人数：<lable id="nanjing"></lable></li>
                    <li><a href="">扬州</a>&nbsp;人数：<lable id="yangzhou"></lable></li>
                </ul>
            </div>
        </div>
        <div class="mapTipText mapTipText6">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">浙江</a></h2>
                <ul>
                    <li><a href=""></a></li>
                    <li><a href="">杭州</a>&nbsp;人数：<lable id="hangzhou"></lable></li>
                </ul>
            </div>
        </div>
        <div class="mapTipText mapTipText12">
            <div class="mapTipImg"><img src="${pageContext.request.contextPath}/images/heilongjiang.jpg" alt=""/></div>
            <div class="mapTipList">
                <h2><a href="">湖北</a></h2>
                <ul>
                    <li><a href=""></a></li>
                    <li><a href="">武汉</a>&nbsp;人数：<lable id="wuhan"></lable></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div style="text-align:center;clear:both;">
    <!--<script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>-->
</div>
<script>
    $(document).ready(function () {
        $.ajax({
            url :"http://localhost:8080/byfl/map/queryAll",
            cache : true,
            type : "get",
            datatype : "json",
            contentType : "application/json; charset=utf-8",
            success : function (data){
                console.log(data);
                if(typeof data == 'string'){
                    var result=JSON.parse(data);
                }else {
                    var result= data;
                }
                for(var i=0;i<result.cityList.length;i++){
                    switch(result.cityList[i].cityName){
                        case "北京":
                            $("#beijing").text(result.cityList[i].cityPeople);
                            break;
                        case "上海":
                            $("#shanghai").text(result.cityList[i].cityPeople);
                            break;
                        case "广州":
                            $("#guangzhou").text(result.cityList[i].cityPeople);
                            break;
                        case "深圳":
                            $("#shenzhen").text(result.cityList[i].cityPeople);
                            break;
                        case "成都":
                            $("#chengdu").text(result.cityList[i].cityPeople);
                            break;
                        case "西安":
                            $("#xian").text(result.cityList[i].cityPeople);
                            break;
                        case "南京":
                            $("#nanjing").text(result.cityList[i].cityPeople);
                            break;
                        case "杭州":
                            $("#hangzhou").text(result.cityList[i].cityPeople);
                            break;
                        case "扬州":
                            $("#yangzhou").text(result.cityList[i].cityPeople);
                            break;
                        case "武汉":
                            $("#wuhan").text(result.cityList[i].cityPeople);
                            break;
                    }
                }
            },
            error : function (data){
                console.log(data.result);
            }
        });
    })
</script>
</body>
</html>
