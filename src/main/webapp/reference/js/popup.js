/**
 * Created by chenchen on 2017/3/27.
 */

/**
 * 页面：highObstacleManage.jsp
 * 功能： 判断要添加的是select还是input
 * by：陈晨
 *
 * */
function isSelect(str) {

    if (str === "机场等级" || str == "机场类型" || str == "源基准类型" || str == "新基准类型" ||
        str == "用户权限" || str == "所属部门") {
        return true;
    } else
        return false;
}


/**
 * 页面：userManage.jsp
 * 功能： 点击添加获取表头内容并显示在弹窗中
 * by：陈晨
 *
 * */
function popCreat() {
    $("#isCreatEmpty").empty();

    var popform = $(".form-creat");//将要添加到这个form中

    var mytable = document.querySelector(".c-table ");

    var cells = mytable.rows.item(0).cells.length;//列数

    popform.empty();//每次都先清空

    for (var i = 1; i < cells; i++) {

        var str = mytable.rows.item(0).cells[i];//拿到每个表头信息
        str = str.innerText;
        console.log(str);

        var a;
        if (isSelect(str) == false) {//要添加的是Input标签

            //这些需要验证是否为数字(可以为小数)
            if (str == "X平移" || str == "Y平移" || str == "跑道长度" || str == "跑道宽度"
                || str == "跑道长度") {

                a = "<div class=\"form-group\">" +
                    "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                    "<div class=\"col-sm-8\">" +
                    "<input onkeyup=\"if(isNaN(value))execCommand('undo')\" class=\"form-control\" onafterpaste=\"if(isNaN(value))execCommand('undo')\">" +
                    "</div>" +
                    "</div>";

            }
            //这些需要验证度分秒（必须为数字和逗号）
            else if (str == "旋转角度" || str == "磁方位" || str == "真方位" || str == "跑道中线中点WGS84(东经)" || str == "跑道中线中点地图坐标(北纬)" || str == "跑道方位") {
                a = "<div class=\"form-group\">" +
                    "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                    "<div class=\"col-sm-8\">" +
                    "<input type=\"text\" class=\"form-control\"  onkeyup=\"if(/^[0-9,]+$/.test(this.value)==false)execCommand('undo')\" >" +
                    "</div>" +
                    "</div>";
            }
            //日期类型
            else if (str == "测试日期") {
                a = "<div class=\"form-group\">" +
                    "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                    "<div class=\"col-sm-8\">" +
                    "<input type=\"date\" class=\"form-control\"  placeholder=\"\">" +
                    "</div>" +
                    "</div>";
            }
            else {
                a = "<div class=\"form-group\">" +
                    "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                    "<div class=\"col-sm-8\">" +
                    "<input type=\"text\" class=\"form-control\"  placeholder=\"\">" +
                    "</div>" +
                    "</div>";
            }


        }
        else {

            var option = [];
            if (str == "机场类型") {

                option.push("军用机场");
                option.push("军民合用机场");

            } else if (str == "机场等级") {

                option.push("一级机场");
                option.push("二级机场");
                option.push("三级机场");
                option.push("四级机场");

            } else if (str == "源基准类型" || str == "新基准类型") {
                option.push("WGS84");
                option.push("北京54");
                option.push("西安80");
                option.push("CGCS200");

            }
            else if (str == "用户权限") {
                option.push("管理员");
                option.push("仅浏览");
            }
            else if (str == "所属部门") {
                option.push("机场保障部");
            }

            var optionstr = "";
            for (var j = 0; j < option.length; j++) {
                optionstr += "<option>" + option[j] + "</option>"
            }

            a = "<div class=\"form-group \">" +
                "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                "<div class=\"col-sm-8\">" +
                "<select class=\"form-control\">" + optionstr +
                "</select>" +
                "</div>" +
                "</div>";
        }
        popform.append(a);
    }

    var inputs = $(".form-creat").find("input");

}

/**
 * 页面：userManage.jsp
 * 功能： 添加弹出层提交弹框时判空
 * by：陈晨
 *
 * */
$(function () {

    $("#creatSave").on("click", function () {
        var flag = 0;

        $(this).parents().prev(".modal-body").children().find("input").each(function () {

            if (!$(this).val()) {

                flag = 1;
            }

        });
        //为空
        if (flag) {

            $("#isCreatEmpty").append("<p>输入数据不能为空！</p>");


            e.preventDefault();
        }
    })
});


/**
 * 页面：userManage.jsp
 * 功能： 修改提交弹框时判空
 * by：陈晨
 *
 * */
$(function () {
    $("#changeSave").on("click", function (e) {
        var flag = 0;

        $(this).parents().prev(".modal-body").children().find("input").each(function () {

            if (!$(this).val()) {

                flag = 1;
            }

        });

        if (flag) {

            $("#isChangeEmpty").empty().append("<p>输入数据不能为空！</p>");


            e.preventDefault();
        }
    })
});


/**
 * 页面：userManage.jsp
 * 功能： 将input和select添加到弹框中
 * by：陈晨
 *
 * */
function modify(flag) {

    $("#isChangeEmpty").empty();


    if (flag == 1) {

        var popform = $(".form-change");//将要添加到这个form中

        var myTable = document.querySelector(".c-table");

        var cells = myTable.rows.item(0).cells.length;//列数

        popform.empty();

        for (var i = 1; i < cells; i++) {

            var str = myTable.rows.item(0).cells[i];//拿到每个表头信息
            str = str.innerText;
            // console.log("我是表头信息："+str);

            var a;
            if (isSelect(str) == false) {//要添加的是Input标签

                //这些需要验证是否为数字(可以为小数)
                if (str == "X平移" || str == "Y平移" || str == "跑道长度" || str == "跑道宽度"
                    || str == "跑道长度") {

                    a = "<div class=\"form-group\">" +
                        "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                        "<div class=\"col-sm-8\">" +
                        "<input onkeyup=\"if(isNaN(value))execCommand('undo')\" class=\"form-control\" onafterpaste=\"if(isNaN(value))execCommand('undo')\">" +
                        "</div>" +
                        "</div>";

                }
                //这些需要验证度分秒（必须为数字和逗号）
                else if (str == "旋转角度" || str == "磁方位" || str == "真方位" || str == "跑道中线中点WGS84(东经)" || str == "跑道中线中点地图坐标(北纬)" || str == "跑道方位") {
                    a = "<div class=\"form-group\">" +
                        "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                        "<div class=\"col-sm-8\">" +
                        "<input type=\"text\" onkeyup=\"if(/^[0-9,]+$/.test(this.value)==false)execCommand('undo')\" >" +
                        "</div>" +
                        "</div>";
                }
                //日期类型
                else if (str == "测试日期") {
                    a = "<div class=\"form-group\">" +
                        "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                        "<div class=\"col-sm-8\">" +
                        "<input type=\"date\" class=\"form-control\"  placeholder=\"\">" +
                        "</div>" +
                        "</div>";
                }
                else {
                    a = "<div class=\"form-group\">" +
                        "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                        "<div class=\"col-sm-8\">" +
                        "<input type=\"text\" class=\"form-control\"  placeholder=\"\">" +
                        "</div>" +
                        "</div>";
                }


            }
            else {
                var option = [];
                if (str == "机场类型") {
                    option.push("军用机场");
                    option.push("军民合用机场");
                } else if (str == "机场等级") {
                    option.push("一级机场");
                    option.push("二级机场");
                    option.push("三级机场");
                    option.push("四级机场");
                } else if (str == "源基准类型" || str == "新基准类型") {
                    option.push("WGS84");
                    option.push("北京54");
                    option.push("西安80");
                    option.push("CGCS200");

                }
                else if (str == "用户权限") {
                    option.push("管理员");
                    option.push("仅浏览");
                }
                else if (str == "所属部门") {
                    option.push("机场保障部");
                }

                var optionstr = "";
                for (var j = 0; j < option.length; j++) {
                    optionstr += "<option>" + option[j] + "</option>"
                }

                a = "<div class=\"form-group \">" +
                    "<label class=\"col-sm-4 control-label\">" + str + "</label>" +
                    "<div class=\"col-sm-8\">" +
                    "<select class=\"form-control\">" + optionstr +
                    "</select>" +
                    "</div>" +
                    "</div>";
            }

            popform.append(a);
        }


        //动态显示弹出框表头
        $("#myModal_x").find(".modal-title").text(document.querySelector(".pophead").textContent);


    }
}




/**
 * 页面：userManage.jsp
 * 功能：调用popCreat函数，点击添加出现弹框（事件监听）
 * by：陈晨
 *
 * */
$(function () {
    var btnCreat = $(".creat");
    btnCreat.on("click", popCreat);
});


/**
 * 页面：highObstacleManage.jsp
 * 功能： 删除 逻辑控制——删除先选择一条数据，否则提示错误信息
 * by：袁静静
*
* */

$(function () {


    var deletePanel = $(".deletepanel").find(".modal-body");


    $(".delete").on("click", function () {

        var text = "<form class=\"form-horizontal\">" +
            "<h4 id=\"exampleModalLabel\">确认删除？</h4>" +
            "</form>";

        var warning = "<form class=\"form-horizontal\">" +
            "<h4 id=\"exampleModalLabel\">请选择一条数据！</h4>" +
            "</form>";

        var flag = 0;

        $(".c-table input[type='checkbox']").each(function () {

            if (this.checked) {

                deletePanel.empty();

                deletePanel.append(text);

                flag = 1;

            }
        });
        if (flag == 0) {
            deletePanel.empty();

            deletePanel.append(warning);

        }

    })
});




/**
 * 页面：userManage.jsp
 * 功能：双击某项，弹出修改面板
*  by：袁静静
* */
$(function () {

    var flag = 0;

    var trRows=$(".c-table").children("tbody").find("tr");
    var tdRows = $(trRows).children("td").slice(1);
    tdRows.dblclick(function () {
        var trData = $(this).parent();
        var tdData = trData.find("td");
        flag = 1;

        modify(flag);

        var tdArray = [];

        tdArray.splice(0, tdArray.length);

        tdData.each(function () {

            tdArray.push($(this).text());

        });

        trData.each(function () {

            $(this).removeAttr("data-toggle data-target");
        });

        $(this).attr({
            "data-toggle": "modal",
            "data-target": "#myModal_x"
        });

        var inputs = $(".form-change input,.form-change select");

        for (var i = 0; i < inputs.length; i++) {
            inputs.eq(i).val(tdArray[i + 1]);
        }

    });

});



/**
 * 页面：highObstacleManage.jsp
 * 功能：实现表格主体（tbody）所有行 单选
 * by：袁静静
 *
 * */
$(function () {

    $("#tbody input[type=checkbox]").on("click", this, function (e) {

        var inputs = $("#tbody").find("input[type=checkbox]");

        if ($("#obstacleLook").attr("disabled") == "disabled") {
            document.getElementById("obstacleLook").removeAttribute("disabled");
        }

        if (this.checked) {

            inputs.each(function () {
                this.checked = false;
            });

            this.checked = true;
        }

    });


});

/**
 * 页面：highObstacleManage.jsp
 * 功能：实现 查看按钮  的逻辑控制，未选择数据行时，提示错误信息；选择 全选按钮  时，禁用 查看 按钮
 * by：袁静静
 *
 * */
$(function () {

    var checkAll = $(".c-table").find("thead").find("input[type=checkbox]");

    var inputs = $(".c-table").find("tbody").find("input[type=checkbox]");

    checkAll.on("click", this, function () {

        if (this.checked) {

            inputs.each(function () {

                this.checked = true;
            });

            //    禁用 高大障碍物 查看 按钮

            $("#obstacleLook").attr("disabled", "disabled");

        } else {
            if ($("#obstacleLook").attr("disabled") == "disabled") {
                document.getElementById("obstacleLook").removeAttribute("disabled");
            }

            this.checked = false;


            inputs.each(function () {

                this.checked = false;
            });

        }
    });

});

/**
*页面：dataManage.jsp
*功能：备份、还原等的进行未选择某条数据的判空提醒
*by：袁静静
 *
 * */
$(function () {


    var undo = $("#myModal_h").find(".modal-body");

    $(".backupBtn,.undoBtn").on("click", function () {


        var textUndo = "<form class=\"form-horizontal\">" +
            "<h4 id=\"exampleModalLabel\">确认还原？</h4>" +
            "</form>";

        var warning = "<form class=\"form-horizontal\">" +
            "<h4 id=\"exampleModalLabel\">请选择一条数据！</h4>" +
            "</form>";

        var flag = 0;

        $(".c-table input[type='checkbox']").each(function () {

            if (this.checked) {

                undo.empty();
                undo.append(textUndo);

                flag = 1;

            }
        });

        if (flag == 0) {


            undo.empty();
            undo.append(warning);
        }

    });

});



/**
 *页面：所有具体模态框的页面
 * 功能：信息修改完毕后，单击 确认/保存 等按钮，面板消失
 * by：袁静静
 * */

$(function () {
    $(".okClassBtn").on("click", function () {

        $(this).attr("data-dismiss", "modal");

    });


});


/**
 * 页面：dataManage.jsp
 * 功能：鼠标悬停 导出 按钮，显示 提示信息
 * by：袁静静
 * */
$(function () {


    $('.exportBtn').popover({
        html: true,
        trigger: 'manual',
        container: $(this).attr('id'),
        placement: 'bottom',
        content: function () {
            return "<div>导出CAD使用文件</div>";
        }
    }).on("mouseenter", function () {
        var _this = this;
        $(this).popover("show");
        $(this).siblings(".popover").on("mouseleave", function () {
            $(_this).popover('hide');
        });
    }).on("mouseleave", function () {
        var _this = this;
        setTimeout(function () {
            if (!$(".popover:hover").length) {
                $(_this).popover("hide")
            }
        }, 100);
    }).on("click", function () {
        var _this = this;
        $(this).popover("hide");

    });

});


/**
 * 页面：highObstacleManage,jsp
 * 功能：鼠标悬停 上传文件 按钮，显示 提示信息
 * by：袁静静
 * */

$(function () {
    $('.uploadBtn').popover({
        html: true,
        trigger: 'manual',
        container: $(this).attr('id'),
        placement: 'bottom',
        content: function () {
            return "<div>上传障碍物信息文件(excel文件)</div>";
        }
    }).on("mouseenter", function () {
        var _this = this;
        $(this).popover("show");
        $(this).siblings(".popover").on("mouseleave", function () {
            $(_this).popover('hide');
        });
    }).on("mouseleave", function () {
        var _this = this;
        setTimeout(function () {
            if (!$(".popover:hover").length) {
                $(_this).popover("hide")
            }
        }, 100);
    }).on("click", function () {
        var _this = this;
        $(this).popover("hide");

    });


});

/**
 * 页面：highObstacleManage,jsp
 * 功能：鼠标悬停 查看 按钮，显示 提示信息
 * by：袁静静
 * */
$(function () {

    $(".look").popover({
        html: true,
        trigger: 'manual',
        container: $(this).attr('id'),
        placement: 'bottom',
        content: function () {
            return "<div>查看障碍物详情</div>";
        }
    }).on("mouseenter", function () {
        var _this = this;
        $(this).popover("show");
        $(this).siblings(".popover").on("mouseleave", function () {
            $(_this).popover('hide');
        });
    }).on("mouseleave", function () {
        var _this = this;
        setTimeout(function () {
            if (!$(".popover:hover").length) {
                $(_this).popover("hide")
            }
        }, 100);
    }).on("click", function () {
        var _this = this;
        $(this).popover("hide");

    });

});

/**
 * 页面：highObstacleManage,jsp
 * 功能：鼠标悬停 导出 按钮，显示 提示信息
 * by：袁静静
 * */
$(function () {

    $(".out").popover({
        html: true,
        trigger: 'manual',
        container: $(this).attr('id'),
        placement: 'bottom',
        content: function () {
            return "<div>导出障碍物信息文件</div>";
        }
    }).on("mouseenter", function () {
        var _this = this;
        $(this).popover("show");
        $(this).siblings(".popover").on("mouseleave", function () {
            $(_this).popover('hide');
        });
    }).on("mouseleave", function () {
        var _this = this;
        setTimeout(function () {
            if (!$(".popover:hover").length) {
                $(_this).popover("hide")
            }
        }, 100);
    }).on("click", function () {
        var _this = this;
        $(this).popover("hide");

    });

});


/**
 * 页面：dataManage.jsp
 * 功能：鼠标悬停 导出文件上报，显示提示信息。、
 * by:袁静静
 * */
$(function () {

    $("#comeSave").popover({
        html: true,
        trigger: 'manual',
        container: $(this).attr('id'),
        placement: 'bottom',
        content: function () {
            return "<div>导出机场及跑道信息</div>";
        }
    }).on("mouseenter", function () {
        var _this = this;
        $(this).popover("show");
        $(this).siblings(".popover").on("mouseleave", function () {
            $(_this).popover('hide');
        });
    }).on("mouseleave", function () {
        var _this = this;
        setTimeout(function () {
            if (!$(".popover:hover").length) {
                $(_this).popover("hide")
            }
        }, 100);
    }).on("click", function () {
        var _this = this;
        $(this).popover("hide");

    });

});
