package com.cdweb.Treestore.dto;

import com.cdweb.Treestore.domain.CategoryStatus;
import lombok.*;

import java.io.Serializable;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class CategoryDto implements Serializable {
    private Long id;
    private String name;
    private CategoryStatus categoryStatus;
}
