package com.cdweb.Treestore.domain;

import jakarta.persistence.*;
import lombok.*;

import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "tree")
public class Tree {
    @Id
    @Column(name = "id_tree", nullable = false)
    private Long idTree;

    @Column(name = "name_tree", nullable = false)
    private String nameTree;

    @Column(name = "price", nullable = false)
    private Double price;

    @Column(name = "image_link")
    private String imageLink;

    @Column(name = "date_created", nullable = false)
    private Date dateCreated;

    @Column(name = "view")
    private Integer view;

    @Enumerated
    @Column(name = "tree_status", nullable = false)
    private TreeStatus treeStatus;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "quantity")
    private String quantity;

    @Column(name = "discount")
    private Float discount;

    @Column(name = "hot_tree")
    private Boolean hotTree;

    @Column(name = "new_tree")
    private Boolean newTree;

}
