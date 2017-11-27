package daoTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import snnu.dao.UserDao;
import snnu.entity.User;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class UserDaoTest {
    @Resource
    private UserDao userDao;
    @Test
    public void testUserDao(){
        String name="admin";
        User user=userDao.queryByName(name);
        System.out.println(user);
    }
    @Test
    public void testQueryAll(){
        List<User> users=new ArrayList<User>();
        users=userDao.queryAll();
        System.out.println(users);
    }
    @Test
    public void testInsert(){
        User user=new User("root","root",4);
        int a=userDao.insert(user);
        System.out.println(a);
    }
    @Test
    public void testUpdate(){
        User user=new User("root","root",3);
        int a=userDao.update(user);
        System.out.println(a);
    }
    @Test
    public void testDelete(){
        String name="root";
        int a=userDao.delete(name);
        System.out.println(a);
    }
//    @Test
//    public void testQueryByUser(){
//        User user=new User("admin","",0);
//        User user1=userDao.queryByUser(user);
//        System.out.println(user1);
//    }
}
