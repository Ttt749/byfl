package snnu.web;


import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import snnu.dao.CityDao;
import snnu.dto.LoginResult;
import snnu.entity.City;
import snnu.entity.User;
import snnu.srvice.UserManngerService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
@Controller
@RequestMapping("/session")
public class LoginPage {
    @Autowired
    private UserManngerService userManngerService;
    @Resource
    private CityDao cityDao;
    private LoginResult loginResult;

    @RequestMapping(value = "/loginPage",method = RequestMethod.GET)
    public String loginPage(){
        return "loginPage";
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST,produces = {"text/html;charset=UTF-8"})
    public String checkLogin(@RequestParam("userName") String userName, @RequestParam("userPwd") String userPwd, HttpSession session, Model model){
        User user=new User(userName,userPwd);
        loginResult=userManngerService.checkUser(user);
        model.addAttribute("result",loginResult.getInfo());
        if(loginResult.isState()){
            session.setAttribute("user",loginResult.getUser());
            List<City> cityList=cityDao.queryAll();
            return "page";
        }else{
            return "loginPage";
        }
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutIndex(HttpSession session) {
        session.removeAttribute("user");
        return "loginPage";
    }
    @RequestMapping(value = "/details",method = RequestMethod.GET)
    public String showDetails(){
        return "details";
    }

}
