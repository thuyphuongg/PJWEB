package com.cdweb.Treestore.dto;


import java.text.DecimalFormat;

public class ShoppingCartDto {
    private Long id;
    private long quantity;
    private UserDto user;
    private TreeDto tree;

    public String getTotal() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(this.quantity * this.tree.getPrice() * (1 - this.tree.getDiscount() / 100)) + " VND";
    }
    public String getTotal(double p) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(p) + " VND";
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public UserDto getUser() {
        return user;
    }

    public void setUser(UserDto user) {
        this.user = user;
    }

    public TreeDto getTree() {
        return tree;
    }

    public void setTree(TreeDto tree) {
        this.tree = tree;
    }

}
