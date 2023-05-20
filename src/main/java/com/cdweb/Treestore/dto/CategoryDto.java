package com.cdweb.Treestore.dto;

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
<<<<<<< Updated upstream
    private boolean categoryStatus;
}
=======

    public CategoryDto() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
>>>>>>> Stashed changes
