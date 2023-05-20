package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.ShoppingCartDto;
import com.cdweb.Treestore.entity.ShoppingCartEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShoppingCartConvert {
    @Autowired
    private ModelMapper modelMapper;

    public ShoppingCartDto toDTO(ShoppingCartEntity shoppingCartEntity) {
        return modelMapper.map(shoppingCartEntity, ShoppingCartDto.class);
    }

    public ShoppingCartEntity toEntity(ShoppingCartDto shoppingCartDTO) {
        return modelMapper.map(shoppingCartDTO, ShoppingCartEntity.class);
    }
}
