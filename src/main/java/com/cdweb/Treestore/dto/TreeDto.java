package com.cdweb.Treestore.dto;

import com.cdweb.Treestore.domain.Category;
import lombok.*;

import java.io.Serializable;
import java.sql.Date;
import java.text.DecimalFormat;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class TreeDto implements Serializable {
    private  Long idTree;
    private  String nameTree;
    private  Double price;
    private  String imageLink;
    private  Date dateCreated;
    private  Integer view;
    private  Boolean active;
    private  String description;
    private Category category;
    private double discount;
    private String quantity;
    public String getPriceFormat() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(this.price) + " VND";
    }

    public String getPriceDiscount() {
        double price = this.price * (1 - this.discount / 100);
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(price) + " VND";
    }

    public String getDiscountFormat() {
        DecimalFormat formatter = new DecimalFormat("##.##");
        return formatter.format(discount) + "%";
    }

    public static String formatPrice(double price) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(price) + " VND";
    }
}
