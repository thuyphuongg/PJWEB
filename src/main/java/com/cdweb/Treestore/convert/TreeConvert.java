package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.TreeDto;
import com.cdweb.Treestore.entity.TreeEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TreeConvert {

    @Autowired
    private ModelMapper modelMapper;

    public TreeDto toDTO(TreeEntity treeEntity) {
        return modelMapper.map(treeEntity, TreeDto.class);
    }

    public TreeEntity toEntity(TreeDto treeDto) {
        return modelMapper.map(treeDto, TreeEntity.class);
    }

    public TreeEntity toEntity(TreeDto treeDto, TreeEntity treeEntity) {
        treeEntity.setId(treeDto.getId());
        treeEntity.setName(treeDto.getName());
        treeEntity.setActive(treeDto.isActive());
        treeEntity.setDescription(treeDto.getDescription());
        treeEntity.setDiscount(treeDto.getDiscount());
        treeEntity.setNewTree(treeDto.isNewTree());
        treeEntity.setHotTree(treeDto.isHotTree());
        treeEntity.setPrice(treeDto.getPrice());
        treeEntity.setQuantity(treeDto.getQuantity());
        treeEntity.setQuantitySold(treeDto.getQuantitySold());
        treeEntity.setMediaList(treeEntity.getMediaList());
        return treeEntity;
    }
}
