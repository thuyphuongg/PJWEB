package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.MediaDto;
import com.cdweb.Treestore.entity.MediaEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MediaConverter {
    @Autowired
    private ModelMapper modelMapper;

    public MediaDto toDTO(MediaEntity mediaEntity) {
        return modelMapper.map(mediaEntity, MediaDto.class);
    }

    public MediaEntity toEntity(MediaDto mediaDTO) {
        return modelMapper.map(mediaDTO, MediaEntity.class);
    }

}
