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
    private double total;
    private List<ShoppingCartDto> list = new ArrayList<>();


    public String getFormat() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(total) + " VND";
    }

    public List<ShoppingCartDto> getList() {
        return list;
    }

    public void setList(List<ShoppingCartDto> list) {
        this.list = list;
    }

    public String pay() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(total + 25000) + " VND";
    }
}
