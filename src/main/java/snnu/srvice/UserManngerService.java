package snnu.srvice;

import snnu.dto.LoginResult;
import snnu.entity.User;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */

public interface UserManngerService {
    /**
     * 查询一个记录
     * @param userName
     * @return
     */
    User getUserByName(String userName);

    /**
     * 查询所有用户
     * @return
     */
    List<User> getUser();

    /**
     * 插入一个用户
     * @param user
     * @return
     */
    int insertUser(User user);

    /**
     * 更新用户
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 删除一个记录
     * @param userName
     * @return
     */
    int deleteUser(String userName);

    /**
     * 判断用户是否可以成功登陆
     * @param user
     * @return
     */
    LoginResult checkUser(User user);
}
