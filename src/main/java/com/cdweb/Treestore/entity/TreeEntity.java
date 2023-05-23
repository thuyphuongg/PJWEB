package com.cdweb.Treestore.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tree")
public class TreeEntity {
    //column
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private boolean active;
    private String description;
    @Column(columnDefinition = "float default 0")
    private double discount;
    @Column
    private Long price;
    @Column
    private Long quantity;
    @Column(name = "quantity_sold")
    private Long quantitySold;
    @Column(columnDefinition = "bit default 0")
    private boolean newTree;
    @Column(columnDefinition = "bit default 0")
    private boolean hotTree;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private CategoryEntity category;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tree", cascade = CascadeType.REMOVE)
    private List<MediaEntity> mediaList = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
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

    public Long getQuantitySold() {
        return quantitySold;
    }

    public void setQuantitySold(Long quantitySold) {
        this.quantitySold = quantitySold;
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

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    public List<MediaEntity> getMediaList() {
        return mediaList;
    }

    public void setMediaList(List<MediaEntity> mediaList) {
        this.mediaList = mediaList;
    }
}

