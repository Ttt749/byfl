package snnu.srvice.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import snnu.dao.CityDao;
import snnu.entity.City;
import snnu.srvice.CityManngerService;

import java.util.List;

/**
 * Created by WT on 2017/9/21.
 */
@Service
public class CityManngerServiceImpl implements CityManngerService {
    @Autowired
    private CityDao cityDao;
    public City getCityById(int cityId) {
        City city=cityDao.queryById(cityId);
        return city;
    }

    public List<City> getCity() {
        List<City> cityList=cityDao.queryAll();
        return cityList;
    }

    public int insertCity(City city) {
        int a=cityDao.insert(city);
        return a;
    }

    public int updateCity(City city) {
        int a=cityDao.update(city);
        return a;
    }

    public int deleteCity(int cityId) {
        int a=cityDao.delete(cityId);
        return a;
    }
}
