package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.domain.Tree;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface TreeRepository extends JpaRepository<Tree,Long> {
    Tree findOneByIdTree(Long id);

    Page<Tree> findAll(Pageable pageable);

    Page<Tree> findAllByActive(boolean active, Pageable pageable);

    Page<Tree> findAllByActiveAndHotTree(boolean active, boolean hotTree, Pageable pageable);

    Page<Tree> findAllByActiveAndNewTree(boolean active, boolean newTree, Pageable pageable);

    Page<Tree> findAllByActiveAndCategoryId(boolean active, Long id, Pageable pageable);


     Page<Tree> findByActiveAndDiscountGreaterThan(boolean active, double discount, Pageable pageable);


     int countAllByActiveAndCategoryId(boolean active, Long id);

     int countAllByActiveAndHotTree(boolean active, boolean hot);


     int countAllByActiveAndNewTree(boolean active, boolean newTree);

     int countAllByActive(boolean active);

     int countAllByActiveAndDiscountGreaterThan(boolean active, double discount);

     Page<Tree> findByActiveAndNameTreeContains(boolean b, String title, Pageable pageable);

     int countAllByActiveAndNameTreeContains(boolean active, String title);

     List<Tree> findByActiveAndNameTreeContains(boolean active, String title);
}
