package com.lql.bill.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * @PackageName：com.lql.bill.entity
 * @ClassName：Bill
 * @Description：
 * @Author：青睐
 * @Create：2021/9/2 22:46
 */
@Data
@Table(name = "bill_")
public class Bill implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_")
    private Long id;
    @Column(name = "title_")
    private String title;
    @Column(name = "bill_time_")
    private Date billTime;
    @Column(name = "type_id_")
    private Long typeId;
    @Column(name = "price_")
    private String price;
    @Column(name = "explain_")
    private String explain;

    /**
     * 注意 @Transient注解表示当前属性为瞬时属性，跟字段没有映射，上面实体类中date1和date2只作为查询条件存
     * 在，跟表中的字段没有关联。
     * 类别名称
     */
    @Transient
    private String typeName;
    /**
     * 开始时间:用于查询
     */
    @Transient
    private Date date1;
    /**
     * 结束时间：用于查询
     */
    @Transient
    private Date date2;
}
