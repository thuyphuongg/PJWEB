package com.cdweb.Treestore.dto;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class TreeDto {
    private Long id;
    private boolean active;
    private String name;
    private String description;
    private double discount;
    private Long price;
    private Long quantity;
    private boolean newTree;
    private boolean hotTree;
    private CategoryDto category;
    private List<MediaDto> mediaList = new ArrayList<>();


    public TreeDto() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public boolean isNewTree() {
        return newTree;
    }

    public void setNewTree(boolean newTree) {
        this.newTree = newTree;
    }

    public boolean isHotTree() {
        return hotTree;
    }

    public void setHotTree(boolean hotTree) {
        this.hotTree = hotTree;
    }

    public CategoryDto getCategory() {
        return category;
    }

    public void setCategory(CategoryDto category) {
        this.category = category;
    }

    public List<MediaDto> getMediaList() {
        return mediaList;
    }

    public void setMediaList(List<MediaDto> mediaList) {
        this.mediaList = mediaList;
    }
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
