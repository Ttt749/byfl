package snnu.srvice;

import snnu.entity.City;

import java.util.List;

/**
 * Created by WT on 2017/9/21.
 */
public interface CityManngerService {
    /**
     * 查询一个记录
     * @param cityId
     * @return
     */
    City getCityById(int cityId);

    /**
     * 查询所有用户
     * @return
     */
    List<City> getCity();

    /**
     * 插入一个用户
     * @param city
     * @return
     */
    int insertCity(City city);

    /**
     * 更新用户
     * @param city
     * @return
     */
    int updateCity(City city);

    /**
     * 删除一个记录
     * @param cityId
     * @return
     */
    int deleteCity(int cityId);

}
