package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.OrderedItemDto;
import com.cdweb.Treestore.entity.OrderedItemEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class OrderedItemConverter {
    @Autowired
    private ModelMapper modelMapper;

    public OrderedItemDto toDTO(OrderedItemEntity orderedItemEntity) {
        return modelMapper.map(orderedItemEntity, OrderedItemDto.class);
    }

    public OrderedItemEntity toEntity(OrderedItemDto orderedItemDTO) {
        return modelMapper.map(orderedItemDTO, OrderedItemEntity.class);
    }
}
