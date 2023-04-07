package com.cdweb.Treestore.services;

import com.cdweb.Treestore.domain.Category;
import com.cdweb.Treestore.dto.CategoryDto;

import java.util.List;


public interface ICategoryService {

//    List<CategoryDto> getAllCategories();
//    CategoryDto getCategoryById(int id);
//    void addCategory(CategoryDto category);
//    void updateCategory(CategoryDto category);
//    void deleteCategory(int id);
//    List<CategoryDto> findAll();

    List<CategoryDto> findAll();

    CategoryDto save(CategoryDto categoryDto);

    CategoryDto findCategory(String category);

    void delete(long id);

    CategoryDto edit(CategoryDto category);

    CategoryDto findById(long id);

//    private CategoryRepository categoryRepository;
//
//    public  Category save(Category entity) {
//        return categoryRepository.save(entity);
//    }

}
