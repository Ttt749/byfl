package snnu.dao;

import org.apache.ibatis.annotations.Param;
import snnu.entity.Graduate;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
public interface GraduateDao {
    Graduate queryById(@Param("graduateId") int graduateId);
    List<Graduate> queryAll();
    int insert(@Param("graduate") Graduate graduate);
    int update(@Param("graduate") Graduate graduate);
    int delete(@Param("graduateId") int graduateId);
}
