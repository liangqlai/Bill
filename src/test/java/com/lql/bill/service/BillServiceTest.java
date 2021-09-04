package com.lql.bill.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lql.bill.entity.Bill;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

@SpringBootTest
class BillServiceTest {

    @Autowired
    private BillService billService;

    @Test
    public void findPage() {
        Bill b = new Bill();
        b.setTitle("1");

        PageInfo<Bill> page = PageHelper.startPage(1, 10).doSelectPageInfo(() -> {
            billService.list(b);
        });

        page.getList().forEach(bill -> {
            System.out.println(bill.getId() + " " + bill.getTitle());
        });

        System.out.println("总行数 = " + page.getTotal());
        System.out.println("当前页 = " + page.getPageNum());
        System.out.println("每页行数 = " + page.getPageSize());
        System.out.println("总页数 = " + page.getPages());
        System.out.println("起始行数 = " + page.getStartRow());
        System.out.println("是第一页 = " + page.isIsFirstPage());
        System.out.println("是最后页 = " + page.isIsLastPage());
        System.out.println("还有下一页 = " + page.isHasNextPage());
        System.out.println("还有上一页 = " + page.isHasPreviousPage());
        System.out.println("页码列表 " + Arrays.toString(page.getNavigatepageNums()));
    }

    @Test
    public void list() {
        Bill b = new Bill();
        b.setTitle("交通费");
        List<Bill> list = billService.list(b);
        for (Bill bill : list) {
            System.out.println(bill.getTitle());
        }
    }

    @Test
    void add() {
    }

    @Test
    void get() {
    }

    @Test
    void update() {
    }

    @Test
    void delete() {
    }
}