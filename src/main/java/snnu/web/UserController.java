package snnu.web;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import snnu.dto.Result;
import snnu.entity.User;
import snnu.srvice.UserManngerService;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserManngerService userManngerService;
    private Result result;
    @RequestMapping(value = "/show",method = RequestMethod.GET)
    public String userShow(Model model){
        List<User> userList=userManngerService.getUser();
        model.addAttribute("userList",userList);
        return "userPage";
    }
//    添加
    @RequestMapping(value = "/insert",method = RequestMethod.POST,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String addUser(@RequestBody User user){
        int a=userManngerService.insertUser(user);
        JSONObject jsonObject = new JSONObject();
        String result="haha";
        if(a>0){
            jsonObject.put("result",result);
        }else{
            jsonObject.put("result",result);
        }
        return jsonObject.toString();
    }
//    更新
    @RequestMapping(value = "/update",method = RequestMethod.POST,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String updateUser(@RequestBody User user){
        int a=userManngerService.updateUser(user);
        JSONObject jsonObject = new JSONObject();
        String result="haha";
        if(a>0){
            jsonObject.put("result",result);
        }else{
            jsonObject.put("result",result);
        }
        return jsonObject.toString();
    }
//    查询
    @RequestMapping(value = "/select",method = RequestMethod.POST,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String selectUser(@RequestBody User user){
        User user1=userManngerService.getUserByName(user.getUserName());
        System.err.println(user1);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("user",user1);

        return jsonObject.toString();
    }
    @RequestMapping(value = "/delete",method = RequestMethod.POST,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String deleteUser(@RequestBody User user){
        int a=userManngerService.deleteUser(user.getUserName());
        JSONObject jsonObject = new JSONObject();
        String result="haha";
        if(a>0){
            jsonObject.put("result",result);
        }else{
            jsonObject.put("result",result);
        }
        return jsonObject.toString();
    }
}
