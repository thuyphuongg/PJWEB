package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.domain.Tree;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface TreeRepository extends CrudRepository<Tree,Long> {
    Tree findOneByIdTree(Long id);

    Page<Tree> findAll(Pageable pageable);

    Page<Tree> findAllByActive(boolean active, Pageable pageable);

    Page<Tree> findAllByActiveAndHotTree(boolean active, boolean hotBook, Pageable pageable);

    Page<Tree> findAllByActiveAndNewTree(boolean active, boolean newBook, Pageable pageable);

    Page<Tree> findAllByActiveAndCategoryName(boolean active, String category, Pageable pageable);


    public Page<Tree> findByActiveAndDiscountGreaterThan(boolean active, double discount, Pageable pageable);


    public int countAllByActiveAndCategoryName(boolean active, String category_code);

    public int countAllByActiveAndHotTree(boolean active, boolean hot_book);


    public int countAllByActiveAndNewTree(boolean active, boolean new_book);

    public int countAllByActive(boolean active);

    public int countAllByActiveAndDiscountGreaterThan(boolean active, double discount);

    public Page<Tree> findByActiveAndNameTreeContains(boolean b, String title, Pageable pageable);

    public int countAllByActiveAndNameTreeContains(boolean active, String title);

    public List<Tree> findByActiveAndNameTreeContains(boolean active, String title);
}
