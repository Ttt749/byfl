package snnu.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import snnu.entity.Graduate;

import javax.annotation.Generated;
import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by WT on 2017/9/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class GraduateDaoTest {
    @Resource
    GraduateDao graduateDao;
    @Test
    public void queryById() throws Exception {
        Graduate graduate=graduateDao.queryById(10000001);
        System.out.println(graduate);
    }

    @Test
    public void queryAll() throws Exception {
        List<Graduate> graduates=graduateDao.queryAll();
        System.out.println(graduates);
    }

    @Test
    public void insert() throws Exception {
        Graduate graduate=new Graduate(0,"张碧晨","女",2015,"软件工程",1);
        int a=graduateDao.insert(graduate);
        System.out.println(a);
    }

    @Test
    public void update() throws Exception {
        Graduate graduate=new Graduate(10000017,"张碧晨","女",2015,"软件工程",5);
        int a=graduateDao.update(graduate);
        System.out.println(a);
    }

    @Test
    public void delete() throws Exception {
        int a=graduateDao.delete(10000017);
        System.out.println(a);
    }

}