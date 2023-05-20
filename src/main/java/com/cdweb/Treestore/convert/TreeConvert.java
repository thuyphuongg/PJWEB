package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.domain.Tree;
import com.cdweb.Treestore.dto.TreeDto;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TreeConvert {

    @Autowired
    private ModelMapper modelMapper;

    public TreeDto toDTO(Tree tree) {
        return modelMapper.map(tree, TreeDto.class);
    }

    public Tree toEntity(TreeDto treeDto) {
        return modelMapper.map(treeDto, Tree.class);
    }

    public Tree toEntity(TreeDto treeDto, Tree tree) {
        tree.setIdTree(treeDto.getIdTree());
        tree.setNameTree(treeDto.getNameTree());
        tree.setPrice(treeDto.getPrice());
        tree.setImageLink(treeDto.getImageLink());
        tree.setDescription(treeDto.getDescription());
        tree.setDateCreated(treeDto.getDateCreated());
        tree.setView(treeDto.getView());
        tree.setActive(treeDto.getActive());
//        tree.setDiscount(treeDto.get());
//        tree.setQuantity(treeDto.getQ());
        return tree;
    }
}
