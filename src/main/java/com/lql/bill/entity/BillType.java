package com.lql.bill.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * @PackageName：com.lql.bill.entity
 * @ClassName：BillType
 * @Description：
 * @Author：青睐
 * @Create：2021/9/2 22:44
 */
@Data
@Table(name = "bill_type_")
public class BillType implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_")
    private Long id;
    @Column(name = "name_")
    private String name;
}