package com.cdweb.Treestore.domain;

import javax.persistence.*;
import lombok.*;

import java.sql.Date;
import java.text.DecimalFormat;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "tree")
public class Tree {
    @Id
    @Column(name = "id_tree", nullable = false)
    private Long idTree;

    @Column(name = "name_tree", nullable = false)
    private String nameTree;

    @Column(name = "price", nullable = false)
    private Double price;

    @Column(name = "image_link")
    private String imageLink;

    @Column(name = "date_created", nullable = false)
    private Date dateCreated;

    @Column(name = "view")
    private Integer view;

    @Column(name = "active", nullable = false)
    private boolean active;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "quantity")
    private String quantity;

    @Column(name = "discount")
    private double discount;

    @Column(name = "hot_tree")
    private Boolean hotTree;

    @Column(name = "new_tree")
    private Boolean newTree;
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;
    public String getPriceFormat() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(this.price) + " VND";
    }

    public String getPriceDiscount() {
        double price = this.price * (1 - this.discount / 100);
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(price) + " VND";
    }

    public static String formatPrice(double price) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(price) + " VND";
    }

}
