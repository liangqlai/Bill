package com.lql.bill.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lql.bill.dao.BillMapper;
import com.lql.bill.entity.Bill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @PackageName：com.lql.bill.service
 * @ClassName：BillService
 * @Description：
 * @Author：青睐
 * @Create：2021/9/2 22:55
 */
@Service
public class BillService {
    @Autowired
    private BillMapper billMapper;

    public PageInfo<Bill> listPage(Bill b, int pageNum, int pageSize) {
        return PageHelper.startPage(pageNum, pageSize).doSelectPageInfo(() -> {
            billMapper.select(b);
        });
    }

    public List<Bill> list(Bill b) {
        return billMapper.select(b);
    }

    public int add(Bill b) {
        return billMapper.insert(b);
    }

    public Bill get(Long id) {
        return billMapper.selectByPrimaryKey(id);
    }

    public int update(Bill b) {
        return billMapper.updateByPrimaryKey(b);
    }

    public int delete(Long id) {
        return billMapper.deleteByPrimaryKey(id);
    }
}
