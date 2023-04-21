package com.cdweb.Treestore.convert;

import com.cdweb.Treestore.domain.Banner;
import com.cdweb.Treestore.dto.BannerDto;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BannerConvert {
    @Autowired
    private ModelMapper modelMapper;

    public BannerDto toDTO(Banner bannerEntity) {
        return modelMapper.map(bannerEntity, BannerDto.class);
    }
    public Banner toEntity(BannerDto bannerDTO){
        return modelMapper.map(bannerDTO,Banner.class);
    }

}
