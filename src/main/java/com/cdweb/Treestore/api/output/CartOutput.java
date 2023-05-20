package com.cdweb.Treestore.api.output;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class CartOutput {
    private double total;
    private List<ShoppingCartDto> list = new ArrayList<>();


    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

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
