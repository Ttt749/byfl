package snnu.web;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import snnu.dto.Result;
import snnu.entity.City;
import snnu.entity.User;
import snnu.srvice.CityManngerService;
import snnu.srvice.UserManngerService;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
@Controller
@RequestMapping("/city")
public class CityController {
    @Autowired
    private CityManngerService cityManngerService;
    private Result result;
    @RequestMapping(value = "/show",method = RequestMethod.GET)
    public String userShow(Model model){
        List<City> cityList=cityManngerService.getCity();
        model.addAttribute("cityList",cityList);
        return "cityPage";
    }
    //    添加
    @RequestMapping(value = "/insert",method = RequestMethod.POST,consumes ={"application/json;charset=utf-8"})
    @ResponseBody
    public String addUser(@RequestBody City city){
        int a=cityManngerService.insertCity(city);
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
    @RequestMapping(value = "/update",method = RequestMethod.POST,consumes = {"application/json;charset=utf-8"})
    @ResponseBody
    public String updateUser(@RequestBody City city){
        int a=cityManngerService.updateCity(city);
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
    @RequestMapping(value = "/select",method = RequestMethod.POST,consumes ={"application/json;charset=utf-8"},produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String selectCity(@RequestBody City city){
        City city1=cityManngerService.getCityById(city.getCityId());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("city",city1);
        System.err.println(city1);
        return jsonObject.toString();
    }
    @RequestMapping(value = "/delete",method = RequestMethod.POST,consumes = {"application/json;charset=utf-8"})
    @ResponseBody
    public String deleteCity(@RequestBody City city){
        int a=cityManngerService.deleteCity(city.getCityId());
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
