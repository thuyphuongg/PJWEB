package com.cdweb.Treestore.services;

import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ITreeService {

    List<TreeDto> findAll();

    TreeDto save(TreeDto treeDto);

    void delete(long[] ids);

     List<TreeDto> findAll(Pageable pageable);

     List<TreeDto> findByCategoryId(Long id, Pageable pageable);

     TreeDto findById(Long id);

     List<TreeDto> findByHot(Pageable pageable);

     List<TreeDto> findByNew(Pageable pageable);

    public List<TreeDto> findByDiscount(Pageable pageable);


    public int countByCategory(Long id);

    public int countByHot();

    public int countByNew();

    public int countAll();

    public int countByDiscount();

    List<TreeDto> findByTitle(String title, Pageable pageable);

    int countByTitle(String title);

    List<String> autoCompleteTitle(String title);
}
