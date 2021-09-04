package com.lql.bill.controller;

import com.github.pagehelper.PageInfo;
import com.lql.bill.entity.Bill;
import com.lql.bill.entity.BillType;
import com.lql.bill.service.BillService;
import com.lql.bill.service.TypeService;
import com.sun.xml.internal.bind.v2.TODO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @PackageName：com.lql.bill.controller
 * @ClassName：BillController
 * @Description：
 * @Author：青睐
 * @Create：2021/9/2 23:10
 */
@Controller
@RequestMapping("/bill")
public class BillController {
    @Autowired
    private TypeService typeService;
    @Autowired
    private BillService billService;

    /**
     * 分页查询
     *
     * @param b
     * @param model
     * @return
     */
    @RequestMapping("/list-page")
    public String listPage(
            @RequestParam(defaultValue = "1") int pageNum,
            @RequestParam(defaultValue = "10") int pageSize,
            Bill b,
            Model model) {
        List<BillType> types = typeService.list();
        model.addAttribute("types", types);

        PageInfo<Bill> page = billService.listPage(b, pageNum, pageSize);
        model.addAttribute("page", page);
        model.addAttribute("bill", b);
        return "/bill/list-page";
    }

    /**
     * 查询
     *
     * @param b
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Bill b, Model model) {
        List<BillType> types = typeService.list();
        model.addAttribute("types", types);

        List<Bill> bills = billService.list(b);
        model.addAttribute("bills", bills);
        return "/bill/list";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("/toAdd")
    public String toAdd(Model model) {
        List<BillType> types = typeService.list();
        model.addAttribute("types", types);
        return "/bill/add";
    }

    /**
     * 添加
     *
     * @param b
     * @return
     */
    @RequestMapping("/add")
    public String add(Bill b) {
        billService.add(b);
        // TODO 增加操作完成要跳转到 bill/list-page 页面。
        return "redirect:/bill/list-page";
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        billService.delete(id);
        return "redirect:/bill/list-page";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @return
     */
    @RequestMapping("/toUpdate/{id}")
    public String toUpdate(@PathVariable("id") Long id, Model model) {
        List<BillType> types = typeService.list();
        model.addAttribute("types", types);
        Bill bill = billService.get(id);
        model.addAttribute("bill", bill);
        return "/bill/update";
    }

    /**
     * 修改
     *
     * @param b
     * @return
     */
    @RequestMapping("/update")
    public String update(Bill b) {
        billService.update(b);
        // TODO 更新操作完成要跳转到 bill/list-page 页面。
        return "redirect:/bill/list-page";
    }
}