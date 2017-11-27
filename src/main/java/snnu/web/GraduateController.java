package snnu.web;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import snnu.entity.Graduate;
import snnu.srvice.GraduateManngerService;

import java.util.List;

/**
 * Created by WT on 2017/9/21.
 */
@Controller
@RequestMapping("/graduate")
public class GraduateController {
    @Autowired
    private GraduateManngerService graduateManngerService;
    @RequestMapping(value = "/show",method = RequestMethod.GET)
    public String userShow(Model model){
        List<Graduate> graduateList=graduateManngerService.getAll();
        model.addAttribute("graduateList",graduateList);
        return "graduatePage";
    }
    //    添加
    @RequestMapping(value = "/insert",method = RequestMethod.POST,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String addUser(@RequestBody Graduate graduate){
        int a=graduateManngerService.insert(graduate);
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
    public String updateUser(@RequestBody Graduate graduate){
        int a=graduateManngerService.update(graduate);
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
    public String selectUser(@RequestBody Graduate graduate){
        Graduate graduate1=graduateManngerService.getById(graduate.getGraduateId());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("graduate",graduate1);

        return jsonObject.toString();
    }
    @RequestMapping(value = "/delete",method = RequestMethod.POST,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String deleteUser(@RequestBody Graduate graduate){
        int a=graduateManngerService.delete(graduate.getGraduateId());
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
