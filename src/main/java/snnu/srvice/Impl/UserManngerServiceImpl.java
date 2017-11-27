package snnu.srvice.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import snnu.dao.UserDao;
import snnu.dto.LoginResult;
import snnu.entity.User;
import snnu.srvice.UserManngerService;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
@Service
public class UserManngerServiceImpl implements UserManngerService {
    @Autowired
    private UserDao userDao;
    public User getUserByName(String userName) {
        User user=userDao.queryByName(userName);
        return user;
    }

    public List<User> getUser() {
        List<User> userList=userDao.queryAll();
        return userList;
    }

    public int insertUser(User user) {
        int a=userDao.insert(user);
        return a;
    }

    public int updateUser(User user) {
        int a=userDao.update(user);
        return a;
    }

    public int deleteUser(String userName) {
        int a=userDao.delete(userName);
        return a;
    }
    @Transactional
    public LoginResult checkUser(User user) {
        LoginResult loginResult=new LoginResult();
        User user1=userDao.queryByName(user.getUserName());
        loginResult.setUser(user1);
        try{
            if(user1==null){
                loginResult.setInfo("账号错误！");
                loginResult.setState(false);
            }else{
                if(user1.getUserPwd().equals(user.getUserPwd())){
                    loginResult.setInfo("登陆成功");
                    loginResult.setState(true);
                }else{
                    loginResult.setState(false);
                    loginResult.setInfo("密码错误！");
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return loginResult;
    }
}
