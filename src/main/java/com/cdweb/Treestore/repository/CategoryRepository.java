package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.entity.CategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Long> {
    @Query(value = "select c.* from category c where c.id=:id", nativeQuery = true)
    public CategoryEntity findCategoryById(@Param("id") Long id);
    public CategoryEntity findByCode(String code);

    CategoryEntity findOneById(long id);
}
