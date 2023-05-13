package com.cdweb.Treestore.domain.input;

import com.cdweb.Treestore.domain.Category;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TreeInput {
    private Long idTree;
    private String nameTree;
    private Double price;
    private String imageLink;
    private Date dateCreated;
    private Integer view;
    private boolean active;
    private String description;
    private String quantity;
    private Float discount;
    private Boolean hotTree;
    private Boolean newTree;
    private Category category;
}
