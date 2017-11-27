package snnu.dao;

import org.apache.ibatis.annotations.Param;
import snnu.entity.GraduateCity;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
public interface GraduateCityDao {
    GraduateCity queryByIdGC(@Param("cityId") int cityId);
    List<GraduateCity> queryAllGC();
}
