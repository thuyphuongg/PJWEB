package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.OrderedConverter;
import com.cdweb.Treestore.dto.OrderedDto;
import com.cdweb.Treestore.entity.OrderedEntity;
import com.cdweb.Treestore.entity.UserEntity;
import com.cdweb.Treestore.repository.OrderedRepository;
import com.cdweb.Treestore.repository.UserRepository;
import com.cdweb.Treestore.services.IOrderedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderedServiceImpl implements IOrderedService {
    @Autowired
    private OrderedConverter orderedConverter;
    @Autowired
    private OrderedRepository orderedRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public OrderedDto save(OrderedDto orderedDTO) {
        OrderedEntity entity = this.orderedConverter.toEntity(orderedDTO);
        entity = this.orderedRepository.save(entity);
        return this.orderedConverter.toDTO(entity);
    }

    @Override
    public List<OrderedDto> findAllOrder(String email) {
        UserEntity user = this.userRepository.findByEmailIgnoreCaseAndIsEnabled(email, true);
        List<OrderedEntity> orderedList = this.orderedRepository.findAllByUserId(user.getId());
        List<OrderedDto> listResult = new ArrayList<>();
        for (OrderedEntity entity : orderedList) {
            listResult.add(this.orderedConverter.toDTO(entity));
        }
        return listResult;
    }

    @Override
    public List<OrderedDto> findAll() {
        List<OrderedEntity> entityList = orderedRepository.findAll();
        List<OrderedDto> results = new ArrayList<>();
        for (OrderedEntity entity : entityList) {
            results.add(this.orderedConverter.toDTO(entity));
        }
        return results;
    }

    @Override
    public OrderedDto findOrder(long id) {
        OrderedEntity entity = this.orderedRepository.getOne(id);
        return this.orderedConverter.toDTO(entity);
    }

    @Override
    public OrderedDto edit(OrderedDto orderedDTO) {
        OrderedEntity orderedEntity = this.orderedRepository.findId(orderedDTO.getId());
        orderedEntity.setStatus(orderedDTO.getStatus());
        return this.orderedConverter.toDTO(this.orderedRepository.save(orderedEntity));
    }


}
