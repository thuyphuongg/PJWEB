package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.OrderedDto;
import com.cdweb.Treestore.entity.OrderedEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class OrderedConverter {
    @Autowired
    private ModelMapper modelMapper;

    public OrderedDto toDTO(OrderedEntity orderedEntity) {
        return modelMapper.map(orderedEntity, OrderedDto.class);
    }

    public OrderedEntity toEntity(OrderedDto orderedDTO) {
        return modelMapper.map(orderedDTO, OrderedEntity.class);
    }
}
