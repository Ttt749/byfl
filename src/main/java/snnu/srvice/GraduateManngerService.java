package snnu.srvice;

import snnu.entity.Graduate;

import java.util.List;

/**
 * Created by WT on 2017/9/21.
 */
public interface GraduateManngerService {
    /**
     * 判断用户是否可以成功登陆
     * @return
     */
    List<Graduate> getAll();
    /**
     * 判断用户是否可以成功登陆
     * @param graduateId
     * @return
     */
    Graduate getById(int graduateId);
    /**
     * 判断用户是否可以成功登陆
     * @param graduate
     * @return
     */
    int insert(Graduate graduate);
    /**
     * 判断用户是否可以成功登陆
     * @param graduate
     * @return
     */
    int update(Graduate graduate);
    /**
     * 判断用户是否可以成功登陆
     * @param graduateId
     * @return
     */
    int delete(int graduateId);
}
