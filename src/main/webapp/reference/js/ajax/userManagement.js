/**
 * Created by Thinker on 2017/4/1.
 */


/**
 * userManage.jsp
 * 添加用户
 * by：丽媛
 */
$(function(){
    $("#add-user").click(function(){
        var inputs = [];
        $(".userForm-create .col-sm-8").each(function(){
            inputs.push($(this).val());
        });
        var user = {
            "userName":inputs[0],
            "userPwd":inputs[1],
            "userRoot":inputs[2]
        };
        $.ajax({
            url:"http://localhost:8080/byfl/user/insert",
            type : "POST",
             scriptCharset: 'utf-8 ',
            contentType: 'application/json',
            dataType: 'json',
            data :JSON.stringify(user),
            headers: {
                "content-Type":"application/json"
            },
            success:function(data){
                // $.toast(data.result.msg);
                if(data.result=="添加成功"){
                    $.toast({
                        text: data.result, // Text that is to be shown in the toast
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
                        text: data.result, // Text that is to be shown in the toast
                        icon: 'warning', // Type of toast icon
                        allowToastClose: true, // Boolean value true or false
                        // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                        stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                        position: 'mid-center', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
                        textAlign: 'center',  // Text alignment i.e. left, right or center
                        loader: false  // Whether to show loader or not. True by default
                    });
                }

                $("#main-frame",window.parent.document).attr("src","http://localhost:8080/byfl/user/show");

            }
        });



    });

});





