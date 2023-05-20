package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.CategoryConvert;
import com.cdweb.Treestore.domain.Category;
import com.cdweb.Treestore.repository.CategoryRepository;
import com.cdweb.Treestore.services.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private CategoryConvert categoryConverter;


    @Override
    public List<CategoryDto> findAll() {
        List<CategoryDto> categoryList = new ArrayList<>();
        List<Category> list = categoryRepository.findAll();
        for (Category category : list) {
            categoryList.add(this.categoryConverter.toDTO(category));
        }
        return categoryList;
    }

    @Override
    public CategoryDto save(CategoryDto categoryDto) {
        return this.categoryConverter.toDTO(categoryRepository.save(this.categoryConverter.toEntity(categoryDto)));
    }


    @Override
    public CategoryDto findCategory(String category) {
        return this.categoryConverter.toDTO(categoryRepository.findByName(category));
    }

    @Override
    public void delete(long id) {

    }

    @Override
    public CategoryDto edit(CategoryDto category) {
        return null;
    }

    @Override
    public CategoryDto findById(long id) {
        return null;
    }
}
