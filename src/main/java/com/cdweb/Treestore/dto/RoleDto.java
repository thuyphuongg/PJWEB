package com.cdweb.Treestore.dto;

import com.cdweb.Treestore.domain.User;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class RoleDto implements Serializable {
    private Long id;
    private String name;
    private List<User> userList;
}
