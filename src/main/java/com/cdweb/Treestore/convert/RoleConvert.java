package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.RoleDto;
import com.cdweb.Treestore.entity.RoleEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RoleConvert {
    @Autowired
    private ModelMapper modelMapper;

    public RoleDto toDTO(RoleEntity roleEntity) {
        return modelMapper.map(roleEntity, RoleDto.class);
    }

    public RoleEntity roleEntity(RoleDto roleDTO) {
        return modelMapper.map(roleDTO, RoleEntity.class);
    }
}
