package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.NewsDto;
import com.cdweb.Treestore.entity.NewsEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NewsConverter {
    @Autowired
    private ModelMapper modelMapper;

    public NewsDto toDTO(NewsEntity newsEntity) {
        return modelMapper.map(newsEntity, NewsDto.class);
    }

    public NewsEntity toEntity(NewsDto newsDTO) {
        return modelMapper.map(newsDTO, NewsEntity.class);
    }
}
