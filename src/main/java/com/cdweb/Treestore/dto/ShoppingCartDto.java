package com.cdweb.Treestore.dto;

import lombok.*;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class ShoppingCartDto implements Serializable {
    private Long id;
    private long quantity;
    private  UserDto user;
    private  TreeDto tree;

    public String getTotal() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(this.quantity * this.tree.getPrice() * (1 - this.tree.getDiscount() / 100)) + " VND";
    }
    public String getTotal(double p) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(p) + " VND";
    }

}
