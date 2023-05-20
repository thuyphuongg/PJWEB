package com.cdweb.Treestore.dto;

import java.text.DecimalFormat;

public class OrderedItemDto {
    private Long id;
    private OrderedDto ordered;
    private TreeDto book;
    private Long quantity;
    private double totalPrice;

    public OrderedItemDto() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public OrderedDto getOrdered() {
        return ordered;
    }

    public void setOrdered(OrderedDto ordered) {
        this.ordered = ordered;
    }

    public TreeDto getBook() {
        return book;
    }

    public void setBook(TreeDto book) {
        this.book = book;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPriceFormat() {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(this.totalPrice) + " VND";
    }
}
