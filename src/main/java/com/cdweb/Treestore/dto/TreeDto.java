package com.cdweb.Treestore.dto;

import lombok.*;

import java.io.Serializable;
import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class TreeDto implements Serializable {
    private  Long idTree;
    private  String nameTree;
    private  Double price;
    private  String imageLink;
    private  Date dateCreated;
    private  Integer view;
    private  Boolean active;
    private  String description;
}
