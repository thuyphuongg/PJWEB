package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.UserDto;
import com.cdweb.Treestore.entity.UserEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserConvert {
    @Autowired
    private ModelMapper modelMapper;

    public UserDto toDTO(UserEntity userEntity) {
        return modelMapper.map(userEntity, UserDto.class);
    }

    public UserEntity toEntity(UserDto userDto) {
        return modelMapper.map(userDto, UserEntity.class);
    }


}
