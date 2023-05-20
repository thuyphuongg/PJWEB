package com.cdweb.Treestore.services;

import com.cdweb.Treestore.dto.BannerDto;

import java.util.List;

public interface IBannerService {
    List<BannerDto> findAll();
}
