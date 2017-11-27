/**
 * 页面：higherObstacleManageAdd.jsp和higherObstacleManageRevise.jsp
 * 功能：超高属性中附属物复选框被选择后才能使用下拉框，默认禁用
 * by:余丽仙
 */
//高大障碍物添加/修改页面
$(function () {
    $(document).ready(function(){
        if(document.getElementById("includeThing").checked==true)
        {
            $(".selectedThing").removeAttr("disabled");
        }
        else {
            $(".selectedThing").attr("disabled", "disabled");
            $(".selectedThing").val("");
        }
    })
});
/**
 * 页面：higherObstacleManageAdd.jsp和higherObstacleManageRevise.jsp
 * 功能：超高属性中附属物复选框被选择后才能使用下拉框，
 * by:余丽仙
 */
$(function () {
    $("#thing input[type='checkbox']").eq(1).on("click",function () {
        if (this.checked){
            $(".selectedThing").removeAttr("disabled");
        }
        else {
            $(".selectedThing").attr("disabled","disabled");
            $(".selectedThing").val("");
        }
    })
});


/**
 * 页面：higherObstacleManageAdd.jsp和higherObstacleManageRevise.jsp
 * 功能：障碍物标志事件处理
 * by:孟丽媛
 */
$(function(){
    $("#no").click(function(){
        $("#color").get(0).checked = false;
        $("#light").get(0).checked = false;
        var radioArr = $(".optionsRadios");
        for(var i = 0;i<radioArr.length;i++){
            radioArr[i].checked = false;
            radioArr[i].disabled = true;
        }
    });
    $("#color").click(function(){
        $("#no").get(0).checked = false;
    });
    $("#light").click(function(){
        $("#no").get(0).checked = false;
        if(this.checked){
            $(".optionsRadios").each(function () {
                $(this).removeAttr("disabled");
            });
        }
        else{
            $(".optionsRadios").each(function () {
                $(this).attr("checked",false);
                $(this).attr("disabled","disabled");
            })
        }
    });
});


$(function(){
    var relythingHide = $("#relythingHide").val();
    $("#relything option").each(function(){
        if(this.value==relythingHide){
            $(this).attr("selected","selected");
        }
    })
});


/**
 * 页面：highObstacleManageRevise.jsp
 * 功能： 获取后台select的数据
 * by：陈晨
 *
 * */
function selectdata(selectElemt, value) {
    selectElemt.find("option").each(function () {
        if ($(this).text() == value) {
            $(this).attr("selected", "selected");
        }
    });
}
selectdata($(".whyHigh"), $(".whyHigh").prev().val());
selectdata($(".controllerBuilding"), $(".controllerBuilding").prev().val());
selectdata($(".buildingType1"), $(".buildingType1").prev().val());
selectdata($("#relything"), $("#relything").prev().val());
selectdata($("#situation"), $("#situation").prev().val());
selectdata($("#zhengzhi"), $("#zhengzhi").prev().val());



/**
 * 页面：highObstacleManageAdd.jsp,highObstacleManageRevise.jsp,airportinfoManage.jsp
 * 功能： 默认情况下  超高属性，超高原因，整治情况三个属性默认禁用
 * by：陈晨
 *
 * */
$(function(){
    $(" .new input").attr("disabled","disabled");
    $(" .new select").attr("disabled","disabled");
});

