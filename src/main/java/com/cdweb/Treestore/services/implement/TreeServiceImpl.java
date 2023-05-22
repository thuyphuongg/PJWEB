package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.MediaConverter;
import com.cdweb.Treestore.convert.TreeConvert;
import com.cdweb.Treestore.dto.MediaDto;
import com.cdweb.Treestore.dto.TreeDto;
import com.cdweb.Treestore.entity.CategoryEntity;
import com.cdweb.Treestore.entity.MediaEntity;
import com.cdweb.Treestore.entity.TreeEntity;
import com.cdweb.Treestore.repository.CategoryRepository;
import com.cdweb.Treestore.repository.MediaRepository;
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
    @Autowired
    private MediaRepository mediaRepository;
    @Autowired
    private MediaConverter mediaConverter;

    @Override
    public List<TreeDto> findAll() {
        Sort sort = null;
        sort = Sort.by("id").descending();
        List<TreeDto> results = new ArrayList<>();
        List<TreeEntity> list = treeRepository.findAll(sort);

        for (TreeEntity tree : list) {
            results.add(this.treeConvert.toDTO(tree));
        }
        return results;
    }

    @Override
    public void save(TreeDto treeDto) {
        TreeEntity treeEntity = new TreeEntity();

        if (treeDto.getId() != 0) {
            TreeEntity oldTreeEntity = treeRepository.findOneById(treeDto.getId());
            treeEntity = treeConvert.toEntity(treeDto, oldTreeEntity);
        } else {
            treeEntity = treeConvert.toEntity(treeDto);
        }
        CategoryEntity category = this.categoryRepository.findCategoryById(treeDto.getCategory().getId());
        treeEntity.setCategory(category);
        List<MediaEntity> mediaEntities = new ArrayList<>();
        for (MediaDto m : treeDto.getMediaList()) {
            mediaEntities.add(mediaConverter.toEntity(m));
        }
        treeEntity.setMediaList(mediaEntities);
        treeRepository.save(treeEntity);

        //save image
        MediaEntity mediaEntity = new MediaEntity();
        mediaEntity.setPath(treeDto.getMediaList().get(0).getPath());
        if (treeDto.getId() != 0)
            mediaEntity.setTree(treeRepository.findOneById(treeDto.getId()));
        else mediaEntity.setTree(treeRepository.findFirstByOrderByIdDesc());
        mediaRepository.save(mediaEntity);
    }


    @Override
    public void delete(long[] ids) {
        for (long item : ids) {
            treeRepository.deleteById(item);
        }
    }


    @Override
    public List<TreeDto> findAll(Pageable pageable) {
        List<TreeDto> treeList = new ArrayList<>();
        List<TreeEntity> treeEntityList = this.treeRepository.findAllByActive(true, pageable).getContent();
        for (TreeEntity tree : treeEntityList) {
            treeList.add(this.treeConvert.toDTO(tree));
        }
        return treeList;
    }

    @Override
    public List<TreeDto> findByCategory(String category_code, Pageable pageable) {
        List<TreeEntity> booklist = treeRepository.findAllByActiveAndCategoryCode(true, category_code, pageable).getContent();
        List<TreeDto> bookResult = new ArrayList<>();
        for (TreeEntity book : booklist) {
            bookResult.add(this.treeConvert.toDTO(book));
        }
        return bookResult;
    }

    @Override
    public int countByCategory(String category_code) {
        if ("null".equalsIgnoreCase(category_code)) {
            return this.treeRepository.countAllByActive(true);
        } else {
            return this.treeRepository.countAllByActiveAndCategoryCode(true, category_code);
        }
    }

    @Override
    public TreeDto findById(Long id) {
        return this.treeConvert.toDTO(this.treeRepository.findOneById(id));
    }

    @Override
    public List<TreeDto> findByHot(Pageable pageable) {
        List<TreeDto> treeList = new ArrayList<>();
        List<TreeEntity> treeEntityList = this.treeRepository.findAllByActiveAndHotTree(true, true, pageable).getContent();
        for (TreeEntity tree : treeEntityList) {
            treeList.add(this.treeConvert.toDTO(tree));
        }
        return treeList;
    }

    @Override
    public List<TreeDto> findByNew(Pageable pageable) {
        List<TreeDto> treeList = new ArrayList<>();
        List<TreeEntity> treeEntityList = this.treeRepository.findAllByActiveAndNewTree(true, true, pageable).getContent();
        for (TreeEntity tree : treeEntityList) {
            treeList.add(this.treeConvert.toDTO(tree));
        }
        return treeList;
    }

    @Override
    public List<TreeDto> findByDiscount(Pageable pageable) {
        List<TreeDto> treeList = new ArrayList<>();
        List<TreeEntity> treeEntityList = this.treeRepository.findByActiveAndDiscountGreaterThan(true, 0, pageable).getContent();
        for (TreeEntity tree : treeEntityList) {
            treeList.add(this.treeConvert.toDTO(tree));
        }
        return treeList;
    }

    @Override
    public int countByHot() {
        return this.treeRepository.countAllByActiveAndHotTree(true, true);
    }

    @Override
    public int countByNew() {
        return this.treeRepository.countAllByActiveAndNewTree(true, true);
    }

    @Override
    public int countAll() {
        return this.treeRepository.countAllByActive(true);
    }

    @Override
    public int countByDiscount() {
        return this.treeRepository.countAllByActiveAndDiscountGreaterThan(true, 0);
    }

    @Override
    public List<TreeDto> findByName(String name, Pageable pageable) {
        List<TreeDto> treeList = new ArrayList<>();
        List<TreeEntity> treeEntityList = this.treeRepository.findByActiveAndNameContains(true, name, pageable).getContent();
        for (TreeEntity tree : treeEntityList) {
            treeList.add(this.treeConvert.toDTO(tree));
        }
        return treeList;
    }

    @Override
    public int countByName(String name) {
        return this.treeRepository.countAllByActiveAndNameContains(true, name);
    }

    @Override
    public List<String> autoCompleteName(String name) {
        List<TreeEntity> treeEntityList = this.treeRepository.findByActiveAndNameContains(true, name);
        List<String> list = new ArrayList<>();
        for (TreeEntity tree : treeEntityList) {
            list.add(tree.getName());
        }
        return list;
    }

    @Override
    public List<TreeDto> findTreeRelate(long categoryId, long quantitySold) {
        List<TreeEntity> list = this.treeRepository.findFirst8ByCategoryIdAndQuantitySoldGreaterThan(categoryId, quantitySold);
        List<TreeDto> result = new ArrayList<>();
        for (TreeEntity tree : list) {
            result.add(treeConvert.toDTO(tree));
        }
        return result;
    }

    @Override
    public List<TreeDto> findIndexHotTree() {
        List<TreeEntity> list = this.treeRepository.findFirst8ByActiveAndHotTreeOrderByIdDesc(true, true);
        List<TreeDto> result = new ArrayList<>();
        for (TreeEntity tree : list) {
            result.add(treeConvert.toDTO(tree));
        }
        return result;
    }

    @Override
    public List<TreeDto> findIndexNewTree() {
        List<TreeEntity> list = this.treeRepository.findFirst8ByActiveAndNewTreeOrderByIdDesc(true, true);
        List<TreeDto> result = new ArrayList<>();
        for (TreeEntity tree : list) {
            result.add(treeConvert.toDTO(tree));
        }
        return result;
    }
}
