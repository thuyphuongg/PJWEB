package com.cdweb.Treestore.controller.web;

import com.cdweb.Treestore.api.output.TreeOutput;
import com.cdweb.Treestore.dto.TreeDto;
import com.cdweb.Treestore.dto.UserDto;
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

    //  ?category=lang-mang&page=1&limit=5&sort=name&order=asc
    @GetMapping("/danh-sach-san-pham")
    public TreeOutput listCustomer(
            @RequestParam(name = "category", required = false, defaultValue = "null") String category,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "9") Integer limit,
            @RequestParam(name = "sort", required = false, defaultValue = "id") String sortName,
            @RequestParam(name = "order", required = false, defaultValue = "ASC") String sortBy,
            @RequestParam(name = "hot", required = false, defaultValue = "false") boolean hot,
            @RequestParam(name = "new", required = false, defaultValue = "false") boolean newTree,
            @RequestParam(name = "sale", required = false, defaultValue = "false") boolean sale,
            @RequestParam(name = "name", required = false, defaultValue = "null") String name
    ) {
        TreeOutput treeOutput = new TreeOutput();
        Sort sortable = null;

        if ("ASC".equalsIgnoreCase(sortBy)) {
            sortable = Sort.by(sortName).ascending();
        }
        if ("DESC".equalsIgnoreCase(sortBy)) {
            sortable = Sort.by(sortName).descending();
        }
        Pageable pageable = PageRequest.of(page - 1, limit, sortable);
        if (!"null".equalsIgnoreCase(name)) {
            treeOutput.setListResult(treeService.findByName(name, pageable));
            treeOutput.setPage(page);
            treeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByName(name)) / limit));
        } else if (!"null".equalsIgnoreCase(category)) {
            treeOutput.setListResult(treeService.findByCategory(category, pageable));
            treeOutput.setPage(page);
            treeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByCategory(category)) / limit));
        } else if (hot) {
            treeOutput.setListResult(treeService.findByHot(pageable));
            treeOutput.setPage(page);
            treeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByHot()) / limit));
        } else if (newTree) {
            treeOutput.setListResult(treeService.findByNew(pageable));
            treeOutput.setPage(page);
            treeOutput.setTotalPage((int) Math.ceil((double) (treeService.countByNew()) / limit));
        } else if (sale) {
            treeOutput.setListResult(treeService.findByDiscount(pageable));
            treeOutput.setPage(page);
            int count = treeService.countByDiscount();
            treeOutput.setTotalPage((int) Math.ceil((double) (count) / limit));
        } else {
            treeOutput.setListResult(treeService.findAll(pageable));
            treeOutput.setPage(page);
            treeOutput.setTotalPage((int) Math.ceil((double) (treeService.countAll()) / limit));
        }
        return treeOutput;
    }

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

    @GetMapping("/chi-tiet-san-pham")
    public ModelAndView treeDetailPage(@RequestParam("id") long id, Principal principal) {
        ModelAndView mav = new ModelAndView("web/chi-tiet-san-pham.html");
        UserDto userDto;
        TreeDto treeFromDb = treeService.findById(id);
        long categoryId = treeFromDb.getCategory().getId();
        if (principal != null) {
            userDto = this.userService.findByEmail(principal.getName());

        } else {
            userDto = null;
        }
        mav.addObject("user", userDto);
        mav.addObject("treeRelate", treeService.findTreeRelate(categoryId, 50));
        return mav;
    }


    @GetMapping("/thong-tin-san-pham")
    public TreeDto treeDetailProduct(@RequestParam(name = "id") Long id) {
        return treeService.findById(id);
    }


    @PostMapping(value = "/save-tree")
    public void createTree(@RequestBody TreeDto treeDTO) {
        treeService.save(treeDTO);
    }


    @GetMapping("/autocomplete")
    public List<String> autoComplete(@RequestParam(name = "name") String name) {
        return this.treeService.autoCompleteName(name);
    }

}
