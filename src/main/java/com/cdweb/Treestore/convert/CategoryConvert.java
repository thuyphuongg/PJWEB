package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.domain.Category;
import com.cdweb.Treestore.dto.CategoryDto;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CategoryConvert {
    @Autowired
    private ModelMapper modelMapper;

    public CategoryDto toDTO(Category category){
        return modelMapper.map(category,CategoryDto.class);
    }
    public Category toEntity(CategoryDto categoryDTO){
        return modelMapper.map(categoryDTO, Category.class);
    }
}
