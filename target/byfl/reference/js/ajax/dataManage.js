/**
 * Created by Thinker on 2017/4/10.
 */

/**
 * dataManage.jsp
 * 数据库备份
 * by：丽媛
 */
$(function () {
    $("#beifenOk").click(function () {
        $.ajax({
            url: "http://localhost:8080/jcjk/backup/create",
            type: "POST",
            scriptCharset: 'utf-8',
            contentType: 'application/json',
            dataType: 'json',
            data: {},
            headers: {
                "content-Type": "application/json"
            },
            success: function (data) {
                var flags = 0;
                $("#myModal_s").removeClass("in");
                if (data.msg == "备份成功") {
                    flags = 1;
                    $.toast({
                        text: data.msg, // Text that is to be shown in the toast
                        icon: 'success', // Type of toast icon
                        allowToastClose: true, // Boolean value true or false
                        // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                        stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                        position: 'mid-center', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
                        textAlign: 'center',  // Text alignment i.e. left, right or center
                        loader: false  // Whether to show loader or not. True by default
                    });
                }
                else{
                    $.toast({
                        text: data.msg, // Text that is to be shown in the toast
                        icon: 'warning', // Type of toast icon
                        allowToastClose: true, // Boolean value true or false
                        // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                        stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                        position: 'mid-center', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
                        textAlign: 'center',  // Text alignment i.e. left, right or center
                        loader: false  // Whether to show loader or not. True by default
                    });
                }
                if (flags == 1) {
                    $("#main-frame", window.parent.document).attr("src", "http://localhost:8080/jcjk/dataManage/show");
                }
            },
            error: function () {
            }
        });
    });

});

/**
 * dataManage.jsp
 * 数据库还原
 * by：丽媛
 */
$(function () {
    $("#huanyuanOk").click(function () {
        $(".c-table input").each(function () {
            if (this.checked) {
                var bkPath = this.value;
                var that = this;
                $.ajax({
                    url: "http://localhost:8080/jcjk/backup/restore",
                    type: "POST",
                    scriptCharset: 'utf-8',
                    dataType: 'json',
                    data: {
                        "bkPath": bkPath
                    },
                    success: function (data) {
                        if (data.msg == "恢复成功") {
                            $("#myModal_s").removeClass("in");
                            //                        $("#main-frame",window.parent.document).attr("src","http://localhost:8080/dataManage/show");
                            // $.toast("<span class='msgSpan'>恢复成功！</span>");
                            $.toast({
                                text: "<span class='msgSpan'>恢复成功！</span>", // Text that is to be shown in the toast
                                icon: 'success', // Type of toast icon
                                allowToastClose: true, // Boolean value true or false
                                // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                                stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                                position: 'mid-center', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
                                textAlign: 'center',  // Text alignment i.e. left, right or center
                                loader: false  // Whether to show loader or not. True by default
                            });

                        }
                        else {
                            $("#myModal_s").removeClass("in");
                            // $.toast("<span class='msgSpan'>恢复失败！</span>");
                            $.toast({
                                text: "<span class='msgSpan'>恢复失败！</span>", // Text that is to be shown in the toast
                                icon: 'success', // Type of toast icon
                                allowToastClose: true, // Boolean value true or false
                                // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                                stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                                position: 'mid-center', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
                                textAlign: 'center',  // Text alignment i.e. left, right or center
                                loader: false  // Whether to show loader or not. True by default
                            });

                        }
                    },
                    error: function () {
                    }
                });
            }
        });
    });

});
/**
 * dataManage.jsp
 * 导出
 * by：丽媛
 */
$(function () {
    $("#comeSave").on("click", this, function () {

        window.location.href = "http://localhost:8080/jcjk/dataManage/dataExport";
    })
});
/**
 * dataManage.jsp
 * 导出text
 * by：丽媛
 */
$(function () {
    $("#export").on("click", this, function () {
        window.location.href = "http://localhost:8080/jcjk/obstacle/exportText";
    })
});



