package snnu.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import snnu.entity.City;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by WT on 2017/9/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class CityDaoTest {
    @Resource
    private CityDao cityDao;
    @Test
    public void queryById() throws Exception {
        City city=cityDao.queryById(1);
        System.out.println(city);
    }

    @Test
    public void queryAll() throws Exception {
        List<City> cities=new ArrayList<City>();
        cities=cityDao.queryAll();
        System.out.println(cities);
    }

    @Test
    public void insert() throws Exception {
        City city=new City(11,"长沙",0);
        int a=cityDao.insert(city);
        System.out.println(a);
    }

    @Test
    public void update() throws Exception {
        City city=new City(11,"长沙",1);
        int a=cityDao.update(city);
        System.out.println(a);
    }

    @Test
    public void delete() throws Exception {
        int a=cityDao.delete(11);
        System.out.println(a);
    }

}