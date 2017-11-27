package snnu.dao;

import org.apache.ibatis.annotations.Param;
import snnu.entity.User;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
public interface UserDao {
    User queryByName(@Param("userName") String userName);
    List<User> queryAll();
    int insert(@Param("user") User user);
    int update(@Param("user") User user);
    int delete(@Param("userName") String userName);
//    User queryByUser(@Param("user") User user);
}
