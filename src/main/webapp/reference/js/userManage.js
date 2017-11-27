
/**
 * 页面：userManage.jsp
 * 功能：修改用户信息
 * by:余丽仙
 */

$(function () {
    $(".change").on("click",this,function(){
        var inputs =  $(".form-change input,.form-change select");
        for(var i=0;i<inputs.length;i++){
            inputs.eq(i).val($(".red p").eq(i).text()) ;
        }
    });
});


/**
 * 页面：userManage.jsp
 * 功能：用户单选
 * by:余丽仙
 */
$(function () {
    $(".userBox").on("click",this,function () {
        if($(this).hasClass("red")){
            $(this).removeClass("red");
        }else{
            $(".userBox").each(function(){
                $(this).removeClass("red");
            });
            $(this).addClass("red");
        }
    });
});

/**
 * 页面：userManage.jsp
 * 功能： 按钮禁用逻辑处理；未选择数据，提示错误信息（修改、删除）
 * */

$(function () {

    var flag=0;

    //修改面板
    var panelModify=$("#reviseUser_y").find(".modal-body");

    //删除面板
    var  panelDelete=$("#exampleModal").find(".modal-body");


    panelModify.empty();
    panelDelete.empty();

    $("#modifyBtn,#deleteBtn").on("click",function () {


        $("div.userBox").each(function () {

            if($(this).hasClass("red")){


                flag=1;
                var modifyText="<form class=\"form-horizontal form-change\" method=\"\" >"+
                    "<div class=\"userPop_c\">"+
                    "<label class=\"col-sm-4\">用户名</label>"+
                    "<input type=\"text\" class=\"col-sm-8 userAccount\" name=\"\" placeholder=\"\">"+
                    "</div>"+
                    "<div class=\"userPop_c\">"+
                    "<label class=\"col-sm-4\">密码</label>"+
                    "<input type=\"text\" class=\"col-sm-8 password\" name=\"\" placeholder=\"\">"+
                    "</div>"+
                    "<div class=\"userPop_c\">"+
                    "<label class=\"col-sm-4\">用户权限</label>"+
                    "<select class=\"col-sm-8\">"+
                    "<option>管理员</option>"+
                    "<option>普通用户</option>"+
                    "</select>"+
                    "</div>"+
                    "<div class=\"userPop_c\">"+
                    "<label class=\"col-sm-4\">用户姓名</label>"+
                    "<input type=\"text\" class=\"col-sm-8 userName\" name=\"\" placeholder=\"\">"+
                    "</div>"+
                    "<div class=\"userPop_c\">"+
                    "<label class=\"col-sm-4\">所属部门</label>"+
                    "<select class=\"col-sm-8\">"+
                    "<option>场站</option>"+
                    "<option>基地</option>"+
                    "<option>战区</option>"+
                    "<option>空军</option>"+
                    "</select>"+
                    "</div>"+
                    "</form>";

                var deleteStr=" <form class=\"form-horizontal\">" +
                    "<h4 align=\"center\">确认删除？</h4>" +
                    "</form>";

                $(panelModify).empty().append(modifyText);
                $(panelDelete).empty().append(deleteStr);

                var info=$(".form-change input, .form-change select") ;
                for(var i=0;i<info.length;i++){
                    info.eq(i).val($(".red p").eq(i).text());
                }

            }

        });


    });

    if(flag==0){

        var warning=" <form class=\"form-horizontal\">" +
            "<h4 align=\"center\">请先选择一条用户信息</h4>" +
            "</form>";

        $(panelModify).empty().append(warning);
        $(panelDelete).empty().append(warning);

    }

});

/**
 * 页面：userManage.jsp
 * 功能： 弹出面板，单击 确定后，消失
 * by：袁静静
 *
 * */
$(function () {

    $(".okClassBtn").on("click",function () {

        $(this).attr("data-dismiss","modal");

    });


});
