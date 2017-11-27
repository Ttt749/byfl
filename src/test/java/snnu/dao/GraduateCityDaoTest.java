package snnu.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import snnu.entity.GraduateCity;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by WT on 2017/9/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class GraduateCityDaoTest {
    @Resource
    private GraduateCityDao graduateCityDao;
    @Test
    public void queryById() throws Exception {
        GraduateCity graduateCity=graduateCityDao.queryByIdGC(1);
        System.out.println(graduateCity);
    }

    @Test
    public void queryAll() throws Exception {
        List<GraduateCity> graduateCityList=graduateCityDao.queryAllGC();
        System.out.println(graduateCityList);
    }

}