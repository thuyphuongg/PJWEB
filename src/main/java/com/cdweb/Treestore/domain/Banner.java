package com.cdweb.Treestore.domain;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "banner")
public class Banner {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;
    @Column
    private String name;
    @Column
    private String url;
}
