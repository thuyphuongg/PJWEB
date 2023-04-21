package com.cdweb.Treestore.services;

import com.cdweb.Treestore.dto.TreeDto;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ITreeService {

    List<TreeDto> findAll();

    TreeDto save(TreeDto treeDto);

    void delete(long[] ids);

    public List<TreeDto> findAll(Pageable pageable);

    public List<TreeDto> findByCategory(String category_code, Pageable pageable);


    public TreeDto findById(Long id);

    public List<TreeDto> findByHot(Pageable pageable);

    public List<TreeDto> findByNew(Pageable pageable);

    public List<TreeDto> findByDiscount(Pageable pageable);


    public int countByCategory(String category);

    public int countByHot();

    public int countByNew();

    public int countAll();

    public int countByDiscount();

    List<TreeDto> findByTitle(String title, Pageable pageable);

    int countByTitle(String title);

    List<String> autoCompleteTitle(String title);
}
