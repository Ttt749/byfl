package snnu.web;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import snnu.entity.City;
import snnu.srvice.CityManngerService;

import java.util.List;

/**
 * Created by WT on 2017/9/17.
 */
@Controller
@RequestMapping("/map")
public class MapView {
    @Autowired
    CityManngerService cityManngerService;
    @RequestMapping(value = "/show",method = RequestMethod.GET)
    public String mapShow(){
        return "mapShow";
    }
    @RequestMapping(value = "/queryAll",method = RequestMethod.GET,produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String mapAll(){
       List<City> cityList= cityManngerService.getCity();
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("cityList",cityList);
        return jsonObject.toString();
    }

}
