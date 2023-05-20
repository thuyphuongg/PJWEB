package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.CategoryConvert;
import com.cdweb.Treestore.dto.CategoryDto;
import com.cdweb.Treestore.entity.CategoryEntity;
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
        List<CategoryEntity> list = categoryRepository.findAll();
        for (CategoryEntity category : list) {
            categoryList.add(this.categoryConverter.toDTO(category));
        }
        return categoryList;
    }

    @Override
    public CategoryDto save(CategoryDto categoryDTO) {
        return this.categoryConverter.toDTO(categoryRepository.save(this.categoryConverter.toEntity(categoryDTO)));
    }

    @Override
    public CategoryDto findCategory(String category) {
        return this.categoryConverter.toDTO(categoryRepository.findByCode(category));
    }

    @Override
    public void delete(long id) {
        this.categoryRepository.deleteById(id);
    }

    @Override
    public CategoryDto edit(CategoryDto category) {
        CategoryEntity categoryEntity = this.categoryRepository.findCategoryById(category.getId());
        categoryEntity.setCode(category.getCode());
        categoryEntity.setName(category.getName());
        return this.categoryConverter.toDTO(this.categoryRepository.save(categoryEntity));
    }

    @Override
    public CategoryDto findById(long id) {

        CategoryEntity categoryEntity = this.categoryRepository.findOneById(id);
        return this.categoryConverter.toDTO(categoryEntity);
    }
}

