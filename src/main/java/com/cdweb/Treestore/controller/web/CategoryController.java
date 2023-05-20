package com.cdweb.Treestore.controller.web;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/categories")
public class CategoryController {
    @Autowired
    private ICategoryService categoryService;

    @PostMapping("/addCategory")
    public CategoryDto save(@RequestBody CategoryDto categoryDTO) {
        return categoryService.save(categoryDTO);
    }
    @GetMapping("/getCategory")
    public List<CategoryDto> get(){
        return categoryService.findAll();
    }

}
