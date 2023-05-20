package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.domain.Role;
import com.cdweb.Treestore.dto.RoleDto;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RoleConvert {
    @Autowired
    private ModelMapper modelMapper;

    public RoleDto toDTO(Role roleEntity) {
        return modelMapper.map(roleEntity, RoleDto.class);
    }

    public Role roleEntity(RoleDto roleDTO) {
        return modelMapper.map(roleDTO, Role.class);
    }
}
