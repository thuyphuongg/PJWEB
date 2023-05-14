package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.domain.Category;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

    @Query(value = "select c.* from category c where c.id=:id", nativeQuery = true)
    Category findCategoryById(@Param("id") Long id);


    Category findByName(String name);



}
