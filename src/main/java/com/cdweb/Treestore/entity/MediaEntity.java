package com.cdweb.Treestore.entity;

import javax.persistence.*;

@Entity
@Table(name = "media")
public class MediaEntity  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String path;

    @ManyToOne(fetch = FetchType.LAZY)
    private TreeEntity tree;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public TreeEntity getTree() {
        return tree;
    }

    public void setTree(TreeEntity tree) {
        this.tree = tree;
    }
}