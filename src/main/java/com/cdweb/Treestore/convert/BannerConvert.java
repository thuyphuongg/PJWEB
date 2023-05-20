package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.dto.BannerDto;
import com.cdweb.Treestore.entity.BannerEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BannerConvert {
    @Autowired
    private ModelMapper modelMapper;

    public BannerDto toDTO(BannerEntity bannerEntity) {
        return modelMapper.map(bannerEntity, BannerDto.class);
    }
    public BannerEntity toEntity(BannerDto bannerDTO){
        return modelMapper.map(bannerDTO,BannerEntity.class);
    }

}
