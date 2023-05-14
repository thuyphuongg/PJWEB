package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.domain.ShoppingCart;
import com.cdweb.Treestore.dto.ShoppingCartDto;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShoppingCartConvert {
    @Autowired
    private ModelMapper modelMapper;

    public ShoppingCartDto toDTO(ShoppingCart shoppingCartEntity) {
        return modelMapper.map(shoppingCartEntity, ShoppingCartDto.class);
    }

    public ShoppingCart toEntity(ShoppingCartDto shoppingCartDTO) {
        return modelMapper.map(shoppingCartDTO, ShoppingCart.class);
    }
}
