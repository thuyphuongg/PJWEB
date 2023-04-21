package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.domain.User;
import com.cdweb.Treestore.dto.UserDto;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserConvert {
    @Autowired
    private ModelMapper modelMapper;

    public UserDto toDTO(User userEntity) {
        return modelMapper.map(userEntity, UserDto.class);
    }

    public User toEntity(UserDto userDTO) {
        return modelMapper.map(userDTO, User.class);
    }


}
