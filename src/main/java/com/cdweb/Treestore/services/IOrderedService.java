package com.cdweb.Treestore.services;

import com.cdweb.Treestore.dto.OrderedDto;

import java.util.List;

public interface IOrderedService {
    public OrderedDto save(OrderedDto orderedDTO);
    public List<OrderedDto> findAllOrder(String email);

    List<OrderedDto> findAll();
    public OrderedDto findOrder(long id);
    public OrderedDto edit(OrderedDto orderedDTO);
}
