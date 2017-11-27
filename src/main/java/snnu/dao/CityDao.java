package snnu.dao;

import org.apache.ibatis.annotations.Param;
import snnu.entity.City;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
public interface CityDao {
    City queryById(@Param("cityId") int cityId);
    List<City> queryAll();
    int insert(@Param("city") City city);
    int update(@Param("city") City city);
    int delete(@Param("cityId") int cityId);
}
