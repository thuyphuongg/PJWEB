package com.cdweb.Treestore.services;

import com.cdweb.Treestore.domain.Category;

import java.util.List;


public interface ICategoryService {


    List<CategoryDto> findAll();

    CategoryDto save(CategoryDto categoryDto);

    CategoryDto findCategory(String category);

    void delete(long id);

    CategoryDto edit(CategoryDto category);

    CategoryDto findById(long id);


}
