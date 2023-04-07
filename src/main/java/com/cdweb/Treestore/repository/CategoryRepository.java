package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.domain.Category;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;
import java.util.Optional;

public interface CategoryRepository extends JpaRepository<Category, Long> {
//    List<Category> findByNameStartsWith(String name, Pageable pageable);

    Category findByName(String name);

    Category findOneById(Long id);


}
