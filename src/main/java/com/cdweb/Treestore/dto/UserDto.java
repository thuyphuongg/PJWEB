package com.cdweb.Treestore.dto;

import lombok.*;

import java.io.Serializable;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class UserDto implements Serializable {
    private Long id;
    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phone;
    private boolean isEnabled;
    private List<RoleDto> roleList;
    private List<String> role;

}
