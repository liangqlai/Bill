package com.lql.bill.service;

import com.lql.bill.dao.TypeMapper;
import com.lql.bill.entity.BillType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 小来
 */
@Service
public class TypeService {
    @Autowired
    private TypeMapper typeMapper;

    public List<BillType> list() {
        return typeMapper.selectAll();
    }
}