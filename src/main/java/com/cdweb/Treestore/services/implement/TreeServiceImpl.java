package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.dto.TreeDto;
import com.cdweb.Treestore.services.ITreeService;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TreeServiceImpl implements ITreeService {

    @Override
    public List<TreeDto> findAll() {
        return null;
    }

    @Override
    public TreeDto save(TreeDto treeDto) {
        return null;
    }

    @Override
    public void delete(long[] ids) {

    }

    @Override
    public List<TreeDto> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<TreeDto> findByCategory(String category_code, Pageable pageable) {
        return null;
    }

    @Override
    public TreeDto findById(Long id) {
        return null;
    }

    @Override
    public List<TreeDto> findByHot(Pageable pageable) {
        return null;
    }

    @Override
    public List<TreeDto> findByNew(Pageable pageable) {
        return null;
    }

    @Override
    public List<TreeDto> findByDiscount(Pageable pageable) {
        return null;
    }

    @Override
    public int countByCategory(String category) {
        return 0;
    }

    @Override
    public int countByHot() {
        return 0;
    }

    @Override
    public int countByNew() {
        return 0;
    }

    @Override
    public int countAll() {
        return 0;
    }

    @Override
    public int countByDiscount() {
        return 0;
    }

    @Override
    public List<TreeDto> findByTitle(String title, Pageable pageable) {
        return null;
    }

    @Override
    public int countByTitle(String title) {
        return 0;
    }

    @Override
    public List<String> autoCompleteTitle(String title) {
        return null;
    }
}
