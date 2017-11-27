package snnu.srvice.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import snnu.dao.GraduateDao;
import snnu.entity.Graduate;
import snnu.srvice.GraduateManngerService;

import java.util.List;

/**
 * Created by WT on 2017/9/21.
 */
@Service
public class GraduateManngerServiceImpl implements GraduateManngerService {
    @Autowired
    private GraduateDao graduateDao;
    public List<Graduate> getAll() {
        List<Graduate> graduateList=graduateDao.queryAll();
        return graduateList;
    }

    public Graduate getById(int graduateId) {
        Graduate graduate=graduateDao.queryById(graduateId);
        return graduate;
    }

    public int insert(Graduate graduate) {
        int a=graduateDao.insert(graduate);
        return a;
    }

    public int update(Graduate graduate) {
        int a=graduateDao.update(graduate);
        return a;
    }

    public int delete(int graduateId) {
        int a=graduateDao.delete(graduateId);
        return a;
    }
}
