package com.cdweb.Treestore.controller.web;

import com.cdweb.Treestore.domain.output.ListTreeOutput;
import com.cdweb.Treestore.dto.UserDto;
import com.cdweb.Treestore.services.ITreeService;
import com.cdweb.Treestore.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;

@RestController
public class TreeController {
    @Autowired
    private ITreeService treeService;
    @Autowired
    private IUserService userService;
    @GetMapping("/san-pham")
    public ModelAndView productPage(Principal principal) {
        ModelAndView mav = new ModelAndView("web/san-pham.html");
        UserDto userDto;
        if (principal != null) {
            userDto = this.userService.findByEmail(principal.getName());
        } else {
            userDto = null;
        }
        mav.addObject("user", userDto);
        return mav;
    }
    @GetMapping("/danh-sach-san-pham")
    public ListTreeOutput listCustomer(
            @RequestParam(name = "category", required = false, defaultValue = "null") String category,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "12") Integer limit,
            @RequestParam(name = "sort", required = false, defaultValue = "id") String sortName,
            @RequestParam(name = "order", required = false, defaultValue = "ASC") String sortBy,
            @RequestParam(name = "hot", required = false, defaultValue = "false") boolean hot,
            @RequestParam(name = "new", required = false, defaultValue = "false") boolean newBook,
            @RequestParam(name = "sale", required = false, defaultValue = "false") boolean sale,
            @RequestParam(name = "title", required = false, defaultValue = "null") String title
    ) {
        ListTreeOutput listTreeOutput = new ListTreeOutput();
        Sort sortable = null;

        if ("ASC".equalsIgnoreCase(sortBy)) {
            sortable = Sort.by(sortName).ascending();
        }
        if ("DESC".equalsIgnoreCase(sortBy)) {
            sortable = Sort.by(sortName).descending();
        }
        Pageable pageable = PageRequest.of(page - 1, limit, sortable);
        if (!"null".equalsIgnoreCase(title)) {
            listTreeOutput.setListResult(treeService.findByTitle(title, pageable));
//            ListTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByTitle(title)) / limit));
        } else if (!"null".equalsIgnoreCase(category)) {
            listTreeOutput.setListResult(treeService.findByCategory(category, pageable));
            listTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByCategory(category)) / limit));
        } else if (hot) {
            listTreeOutput.setListResult(treeService.findByHot(pageable));
            listTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByHot()) / limit));
        } else if (newBook) {
            listTreeOutput.setListResult(treeService.findByNew(pageable));
            listTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByNew()) / limit));
        } else if (sale) {
            listTreeOutput.setListResult(treeService.findByDiscount(pageable));
            listTreeOutput.setPage(page);
            int count = treeService.countByDiscount();
            listTreeOutput.setTotalPage((int) Math.ceil((double) (count) / limit));
        } else {
            listTreeOutput.setListResult(treeService.findAll(pageable));
            listTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countAll()) / limit));
        }
        return listTreeOutput;
    }
}
