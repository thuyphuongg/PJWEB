package com.cdweb.Treestore.entity;

import javax.persistence.*;

@Entity
@Table(name = "shopping_cart")
public class ShoppingCartEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private long quantity;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    @ManyToOne
    @JoinColumn(name = "tree_id")
    private TreeEntity tree;

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

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public TreeEntity getTree() {
        return tree;
    }

    public void setTree(TreeEntity tree) {
        this.tree = tree;
    }
}
