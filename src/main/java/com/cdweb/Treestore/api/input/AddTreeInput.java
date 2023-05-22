package com.cdweb.Treestore.api.input;

import org.springframework.web.multipart.MultipartFile;

public class AddTreeInput {
    private long id;
    private String name;
    private String description;
    private double discount;
    private Long price;
    private Long quantity;
    private Long quantitySold;
    private boolean newTree;
    private boolean hotTree;
    private String category;
    private MultipartFile images;

    public AddTreeInput() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public MultipartFile getImages() {
        return images;
    }

    public void setImages(MultipartFile images) {
        this.images = images;
    }

    public Long getQuantitySold() {
        return quantitySold;
    }

    public void setQuantitySold(Long quantitySold) {
        this.quantitySold = quantitySold;
    }
}
