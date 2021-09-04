package com.lql.bill.dao;

import com.lql.bill.entity.Bill;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @author 小来
 */
public interface BillMapper extends Mapper<Bill> {
    /**
     * tk.mybatis内置查询比较单一固定，不灵活，不能实现动态查询，动态修改语句，
     * 所以特定需求的查询需要写映射文件。
     *
     * @param b
     * @return
     */
    @Override
    public List<Bill> select(Bill b);
}