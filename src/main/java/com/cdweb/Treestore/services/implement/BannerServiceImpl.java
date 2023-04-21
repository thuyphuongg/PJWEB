package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.BannerConvert;
import com.cdweb.Treestore.domain.Banner;
import com.cdweb.Treestore.dto.BannerDto;
import com.cdweb.Treestore.repository.BannerRepository;
import com.cdweb.Treestore.services.IBannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class BannerServiceImpl implements IBannerService {
    @Autowired
    private BannerRepository bannerRepository;
    @Autowired
    private BannerConvert bannerConverter;
    @Override
    public List<BannerDto> findAll() {
        List<BannerDto> results=new ArrayList<>();
        List<Banner> bannerList= bannerRepository.findAll();
        for (Banner banner:bannerList){
            results.add(this.bannerConverter.toDTO(banner));
        }
        return results;
    }
}
