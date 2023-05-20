package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.OrderedItemConverter;
import com.cdweb.Treestore.dto.OrderedItemDto;
import com.cdweb.Treestore.entity.OrderedItemEntity;
import com.cdweb.Treestore.repository.OrderedItemRepository;
import com.cdweb.Treestore.services.IOrderItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderedItemServiceImpl implements IOrderItemService {
    @Autowired
    private OrderedItemRepository orderedItemRepository;
    @Autowired
    private OrderedItemConverter orderedItemConverter;


    @Override
    public OrderedItemDto save(OrderedItemDto orderedItem) {
        OrderedItemEntity entity = this.orderedItemRepository.save(this.orderedItemConverter.toEntity(orderedItem));
        return this.orderedItemConverter.toDTO(entity);
    }
}
