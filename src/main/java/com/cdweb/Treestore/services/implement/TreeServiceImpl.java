package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.TreeConvert;
import com.cdweb.Treestore.domain.Category;
import com.cdweb.Treestore.domain.Tree;
import com.cdweb.Treestore.dto.TreeDto;
import com.cdweb.Treestore.repository.CategoryRepository;
import com.cdweb.Treestore.repository.TreeRepository;
import com.cdweb.Treestore.services.ITreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TreeServiceImpl implements ITreeService {
    @Autowired
    private TreeRepository treeRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private TreeConvert treeConvert;

    @Override
    public List<TreeDto> findAll() {
        Sort sort = null;
        sort = Sort.by("id").descending();
        List<TreeDto> results = new ArrayList<>();
        List<Tree> list = treeRepository.findAll(sort);

        for (Tree book : list) {
            results.add(this.treeConvert.toDTO(book));
        }
        return results;
    }

    @Override
    public TreeDto save(TreeDto treeDto) {
        Tree tree = new Tree();


        if (treeDto.getIdTree() != 0) {
            Tree oldTree = treeRepository.findOneByIdTree(treeDto.getIdTree());
            tree = treeConvert.toEntity(treeDto, oldTree);
        } else {
            tree = treeConvert.toEntity(treeDto);
        }
        Category category = this.categoryRepository.findCategoryById(treeDto.getCategory().getId());
        tree.setCategory(category);
        tree = treeRepository.save(tree);
        return treeConvert.toDTO(this.treeRepository.findOneByIdTree(tree.getIdTree()));
    }

    @Override
    public void delete(long[] ids) {
        for (long item : ids) {
            treeRepository.deleteById(item);
        }
    }

    @Override
    public List<TreeDto> findAll(Pageable pageable) {

        List<TreeDto> treeDtoList = new ArrayList<>();
        List<Tree> treeList = this.treeRepository.findAllByActive(true, pageable).getContent();
        for (Tree tree : treeList) {
            treeDtoList.add(this.treeConvert.toDTO(tree));
        }
        return treeDtoList;
    }

    @Override
    public List<TreeDto> findByCategoryId(Long id, Pageable pageable) {

        List<Tree> treelist = treeRepository.findAllByActiveAndCategoryId(true, id, pageable).getContent();
        List<TreeDto> treeResult = new ArrayList<>();
        for (Tree tree : treelist) {
            treeResult.add(this.treeConvert.toDTO(tree));
        }
        return treeResult;
    }

    @Override
    public TreeDto findById(Long id) {
        return this.treeConvert.toDTO(this.treeRepository.findOneByIdTree(id));
    }

    @Override
    public List<TreeDto> findByHot(Pageable pageable) {
        List<TreeDto> treeDtoList = new ArrayList<>();
        List<Tree> treeList = this.treeRepository.findAllByActiveAndHotTree(true, true, pageable).getContent();
        for (Tree tree : treeList) {
            treeDtoList.add(this.treeConvert.toDTO(tree));
        }
        return treeDtoList;
    }

    @Override
    public List<TreeDto> findByNew(Pageable pageable) {
        List<TreeDto> treeDtoList = new ArrayList<>();
        List<Tree> treeList = this.treeRepository.findAllByActiveAndNewTree(true, true, pageable).getContent();
        for (Tree tree : treeList) {
            treeDtoList.add(this.treeConvert.toDTO(tree));
        }
        return treeDtoList;
    }

    @Override
    public List<TreeDto> findByDiscount(Pageable pageable) {
        List<TreeDto> treeDtoList = new ArrayList<>();

        List<Tree> treeList = this.treeRepository.findByActiveAndDiscountGreaterThan(true, 0.0, pageable).getContent();
        for (Tree tree : treeList) {
            treeDtoList.add(this.treeConvert.toDTO(tree));
        }
        return treeDtoList;
    }

    @Override
    public int countByCategory(Long id) {
        if (id==null) {
            return this.treeRepository.countAllByActive(true);
        } else {
            return this.treeRepository.countAllByActiveAndCategoryId(true, id);
        }   }

    @Override
    public int countByHot() {
        return this.treeRepository.countAllByActiveAndHotTree(true,true);
    }

    @Override
    public int countByNew() {
        return this.treeRepository.countAllByActiveAndNewTree(true,true);
    }

    @Override
    public int countAll() {
        return this.treeRepository.countAllByActive(true);
    }

    @Override
    public int countByDiscount() {
        return this.treeRepository.countAllByActiveAndDiscountGreaterThan(true,0.0);
    }

    @Override
    public List<TreeDto> findByTitle(String title, Pageable pageable) {
        List<TreeDto> treeDtoList = new ArrayList<>();
        List<Tree> treeList = this.treeRepository.findByActiveAndNameTreeContains(true, title, pageable).getContent();
        for (Tree tree : treeList) {
            treeDtoList.add(this.treeConvert.toDTO(tree));
        }
        return treeDtoList;
    }

    @Override
    public int countByTitle(String title) {
        return this.treeRepository.countAllByActiveAndNameTreeContains(true, title);

    }

    @Override
    public List<String> autoCompleteTitle(String title) {
        List<Tree> treeList = new ArrayList<>();
        List<String> list = new ArrayList<>();
        for (Tree tree : treeList) {
            list.add(tree.getNameTree());
        }
        return list;
    }
}
