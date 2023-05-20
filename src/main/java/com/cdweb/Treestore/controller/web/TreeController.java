package com.cdweb.Treestore.controller.web;

import com.cdweb.Treestore.domain.output.ListTreeOutput;
import com.cdweb.Treestore.services.ITreeService;
import com.cdweb.Treestore.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

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
            @RequestParam(name = "category", required = false) Long id,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "12") Integer limit,
            @RequestParam(name = "sort", required = false, defaultValue = "idTree") String sortName,
            @RequestParam(name = "order", required = false, defaultValue = "ASC") String sortBy,
            @RequestParam(name = "hot", required = false, defaultValue = "false") boolean hotTree,
            @RequestParam(name = "new", required = false, defaultValue = "false") boolean newTree,
            @RequestParam(name = "sale", required = false, defaultValue = "false") boolean sale,
            @RequestParam(name = "name_tree", required = false, defaultValue = "null") String nameTree
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
        if (!"null".equalsIgnoreCase(nameTree)) {
            listTreeOutput.setListResult(treeService.findByTitle(nameTree, pageable));
            listTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByTitle(nameTree)) / limit));
        } else if (id != null && id != 0) {
            listTreeOutput.setListResult(treeService.findByCategoryId(id, pageable));
            listTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByCategory(id)) / limit));
        } else if (hotTree) {
            listTreeOutput.setListResult(treeService.findByHot(pageable));
            listTreeOutput.setPage(page);
            listTreeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByHot()) / limit));
        } else if (newTree) {
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

    @GetMapping("/chi-tiet-san-pham")
    public ModelAndView treeDetailPage(Principal principal) {
        ModelAndView mav = new ModelAndView("web/chi-tiet-san-pham.html");
        UserDto userDTO;
        if (principal != null) {
            userDTO = this.userService.findByEmail(principal.getName());
        } else {
            userDTO = null;
        }
        mav.addObject("user", userDTO);
        return mav;
    }


    @GetMapping("/thong-tin-san-pham")
    public TreeDto treeDetailProduct(@RequestParam(name = "id") Long id) {
        return treeService.findById(id);
    }


    @PostMapping(value = "/save-book")
    public TreeDto createBook(@RequestBody TreeDto treeDto) {
        return treeService.save(treeDto);
    }


    @GetMapping("/autocomplete")
    public List<String> autoComplete(@RequestParam(name = "title") String title) {
        return this.treeService.autoCompleteTitle(title);
    }
}
