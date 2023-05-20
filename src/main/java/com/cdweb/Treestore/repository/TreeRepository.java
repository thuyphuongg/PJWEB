package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.entity.TreeEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TreeRepository extends JpaRepository<TreeEntity, Long> {
    TreeEntity findOneById(Long id);

    Page<TreeEntity> findAll(Pageable pageable);

    Page<TreeEntity> findAllByActive(boolean active, Pageable pageable);

    Page<TreeEntity> findAllByActiveAndHotTree(boolean active, boolean hotTree, Pageable pageable);

    Page<TreeEntity> findAllByActiveAndNewTree(boolean active, boolean newTree, Pageable pageable);

    Page<TreeEntity> findAllByActiveAndCategoryCode(boolean active, String category, Pageable pageable);


    public Page<TreeEntity> findByActiveAndDiscountGreaterThan(boolean active, double discount, Pageable pageable);


    public int countAllByActiveAndCategoryCode(boolean active, String category_code);

    public int countAllByActiveAndHotTree(boolean active, boolean hot_tree);


    public int countAllByActiveAndNewTree(boolean active, boolean new_tree);

    public int countAllByActive(boolean active);

    public int countAllByActiveAndDiscountGreaterThan(boolean active, double discount);

    public Page<TreeEntity> findByActiveAndNameContains(boolean b, String Name, Pageable pageable);

    public int countAllByActiveAndNameContains(boolean active, String Name);

    public List<TreeEntity> findByActiveAndNameContains(boolean active, String Name);
}