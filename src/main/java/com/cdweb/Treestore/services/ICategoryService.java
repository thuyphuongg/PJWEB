package com.cdweb.Treestore.services;

import com.cdweb.Treestore.dto.CategoryDto;

import java.util.List;


public interface ICategoryService {
    List<CategoryDto> findAll();

    CategoryDto save(CategoryDto categoryDTO);

    CategoryDto findCategory(String category);

    void delete(long id);

    CategoryDto edit(CategoryDto category);

    CategoryDto findById(long id);
}