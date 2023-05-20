package com.cdweb.Treestore.dto;

public class MediaDto {
    private Long id;
    private String path;
    private TreeDto tree;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }



    public void setBook(TreeDto tree) {
        this.tree = tree;
    }
}
