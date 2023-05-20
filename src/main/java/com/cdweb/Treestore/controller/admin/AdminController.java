package com.cdweb.Treestore.controller.admin;

import com.cdweb.Treestore.convert.RoleConvert;
import com.cdweb.Treestore.domain.input.UserInput;
import com.cdweb.Treestore.dto.CategoryDto;
import com.cdweb.Treestore.dto.RoleDto;
import com.cdweb.Treestore.dto.UserDto;
import com.cdweb.Treestore.repository.RoleRepository;
import com.cdweb.Treestore.services.ICategoryService;
import com.cdweb.Treestore.services.ITreeService;
import com.cdweb.Treestore.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

@RestController
public class AdminController {
    private static final Path CURRENT_FOLDER = Paths.get(System.getProperty("user.dir"));
    @Autowired
    BCryptPasswordEncoder encoder;
    @Autowired
    private ITreeService treeService;
    @Autowired
    private IUserService userService;
    @Autowired
    private ICategoryService categoryService;
//    @Autowired
//    private IOrderedService orderedService;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private RoleConvert roleConverter;


    //    PRODUCT   //


    @GetMapping("/admin")
    public ModelAndView listProduct(Principal principal) {
        ModelAndView mav = new ModelAndView("admin/index.html");
        mav.addObject("listbook", treeService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }

    @GetMapping("/admin-productAdd")
    public ModelAndView addProductPage(Principal principal) {
        ModelAndView mav = new ModelAndView("admin/product-add.html");
        mav.addObject("listcategory", categoryService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }

//    @PostMapping("/admin-productAdd")
//    public ModelAndView addProduct(@ModelAttribute("AddBookInput") AddBookInput bookInput, Principal principal) {
//        Path staticPath = Paths.get("src/main/resources/static");
//        Path imagePath = Paths.get("admin/img/bookupload");
//        if (!Files.exists(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath))) {
//            try {
//                Files.createDirectories(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath));
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//        Path file = CURRENT_FOLDER.resolve(staticPath)
//                .resolve(imagePath).resolve(bookInput.getImages().getOriginalFilename());
//        try (OutputStream os = Files.newOutputStream(file)) {
//            os.write(bookInput.getImages().getBytes());
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        BookDTO bookDTO = new BookDTO();
//        bookDTO.setId(bookInput.getId());
//        bookDTO.setTitle(bookInput.getTitle());
//        bookDTO.setShortDescription(bookInput.getShortDescription());
//        bookDTO.setDescription(bookInput.getDescription());
//        bookDTO.setDiscount(bookInput.getDiscount());
//        bookDTO.setPrice(bookInput.getPrice());
//        bookDTO.setQuantity(bookInput.getQuantity());
//        bookDTO.setPage(bookInput.getPage());
//        bookDTO.setNewBook(bookInput.isNewBook());
//        bookDTO.setHotBook(bookInput.isHotBook());
//        bookDTO.setPublisher(bookInput.getPublisher());
//        bookDTO.setActive(true);
//        bookDTO.setCategory(this.categoryService.findCategory(bookInput.getCategory()));
//
//        List<MediaDTO> medias = new ArrayList<>();
//        MediaDTO media = new MediaDTO();
//        StringTokenizer stringTokenizer = new StringTokenizer(imagePath.resolve(bookInput.getImages().getOriginalFilename()).toString(), "\\");
//        String s = "";
//        while (stringTokenizer.hasMoreTokens()) {
//            s += stringTokenizer.nextToken() + "/";
//        }
//        media.setPath(s.substring(0, s.length() - 1));
//        medias.add(media);
//        bookDTO.setMediaList(medias);
//
//        BookDTO book = bookService.save(bookDTO);
//
//        ModelAndView mav = new ModelAndView("admin/index.html");
//        mav.addObject("listbook", bookService.findAll());
//        mav.addObject("username", principal.getName());
//        return mav;
//    }


    @GetMapping("/admin-productEdit")
    public ModelAndView editProductPage(@Param("id") long id, Principal principal) {
        ModelAndView mav = new ModelAndView("admin/product-edit.html");
        mav.addObject("listcategory", categoryService.findAll());
        mav.addObject("product", treeService.findById(id));
        mav.addObject("username", principal.getName());
        return mav;
    }

    @GetMapping("/admin-productDelete")
    public ModelAndView deleteProductPage(@Param("id") long id, Principal principal) {
        ModelAndView mav = new ModelAndView("admin/index.html");
        mav.addObject("listcategory", categoryService.findAll());
        long[] ids = {id};
        treeService.delete(ids);
        mav.addObject("listbook", treeService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }

    //    PRODUCT   //

    //    CATEGORY    //

    @GetMapping("/admin-listCategory")
    public ModelAndView listCategory(Principal principal) {
        ModelAndView mav = new ModelAndView("admin/productType.html");
        mav.addObject("listcategory", categoryService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }

    @GetMapping("/admin-editType")
    public ModelAndView editCategoryPage(@Param("id") long id, Principal principal) {
        ModelAndView mav = new ModelAndView("admin/productType-edit.html");
        mav.addObject("username", principal.getName());
        mav.addObject("category", categoryService.findById(id));
        return mav;
    }

    @PostMapping("/admin-editType")
    public ModelAndView editCategory(@ModelAttribute("category") CategoryDto category, Principal principal) {

        categoryService.edit(category);

        ModelAndView mav = new ModelAndView("admin/productType.html");
        mav.addObject("listcategory", categoryService.findCategory(String.valueOf(category.getId())));
        mav.addObject("username", principal.getName());
        return mav;
    }

    @GetMapping("/admin-addType")
    public ModelAndView addCategory(Principal principal) {
        ModelAndView mav = new ModelAndView("admin/productType-add.html");
        mav.addObject("category", new CategoryDto());
        mav.addObject("username", principal.getName());
        return mav;
    }

    @RequestMapping(value = "/admin-addType", method = RequestMethod.POST)
    public ModelAndView addType(@ModelAttribute("category") CategoryDto category, Principal principal) {
        categoryService.save(category);
        ModelAndView mav = new ModelAndView("admin/productType.html");
        mav.addObject("listcategory", categoryService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }

    @GetMapping(value = "/admin-deleteType")
    public ModelAndView deleteCategory(@Param("id") long id, Principal principal) {

        this.categoryService.delete(id);
        ModelAndView mav = new ModelAndView("admin/productType.html");
        mav.addObject("listcategory", categoryService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }
    //    CATEGORY    //

    //    ORDER  //

//    @GetMapping("/admin-listOrder")
//    public ModelAndView listOrder(Principal principal) {
//        ModelAndView mav = new ModelAndView("admin/cart.html");
//        mav.addObject("listOrders", orderedService.findAll());
//        mav.addObject("username", principal.getName());
//        return mav;
//    }
//
//    @GetMapping("/admin-orderDetail")
//    public ModelAndView orderDetail(@Param("id") long id, Principal principal) {
//        ModelAndView mav = new ModelAndView("admin/cart-detail.html");
//        mav.addObject("order", orderedService.findOrder(id));
//        mav.addObject("username", principal.getName());
//        return mav;
//    }

//    @GetMapping("/admin-editOrder")
//    public ModelAndView orderEditPage(@Param("id") long id, Principal principal) {
//        ModelAndView mav = new ModelAndView("admin/cart-edit.html");
//        mav.addObject("order", orderedService.findOrder(id));
//        mav.addObject("username", principal.getName());
//        return mav;
//    }

//    @PostMapping("/admin-editOrder")
//    public ModelAndView orderEdit(@ModelAttribute("order") OrderedDTO ordered, Principal principal) {
//        this.orderedService.edit(ordered);
//        ModelAndView mav = new ModelAndView("admin/cart.html");
//        mav.addObject("listOrders", orderedService.findAll());
//        mav.addObject("username", principal.getName());
//        return mav;
//    }

    // CUSTOMER//

    @GetMapping("/admin-listCustomer")
    public ModelAndView listCustomer(Principal principal) {
        ModelAndView mav = new ModelAndView("admin/customer.html");
        mav.addObject("listAllUser", userService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }

    @GetMapping(value = "/admin-addUser")
    public ModelAndView getAddUserPage(Principal principal) {
        ModelAndView mav = new ModelAndView("admin/customer-add.html");
        mav.addObject("userinput", new UserDto());
        mav.addObject("username", principal.getName());
        return mav;
    }



    @RequestMapping(value = "/admin-addUser", method = RequestMethod.POST)
    public ModelAndView addUser(@ModelAttribute("userinput") UserInput userinput, Principal principal) {
        UserDto user = new UserDto();
        List<RoleDto> roleDTO = new ArrayList<>();
        for (String s : userinput.getRole()) {
            roleDTO.add(this.roleConverter.toDTO(this.roleRepository.findByName(s)));
        }
        user.setEmail(userinput.getEmail());
        user.setPassword(userinput.getPassword());
        user.setFullName(userinput.getFullName());
        user.setPhone(userinput.getPhone());
        user.setAddress(userinput.getAddress());
        if (userinput.getIsEnabled().equals("true")) {
            user.setEnabled(true);
        }
        user.setRoleList(roleDTO);
        userService.save(user);
        ModelAndView mav = new ModelAndView("admin/customer.html");
        mav.addObject("listAllUser", userService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }


    @GetMapping(value = "/admin-editUser")
    public ModelAndView editUserPage(@Param("email") String email, Principal principal) {
        ModelAndView mav = new ModelAndView("admin/customer-edit.html");
        mav.addObject("user", userService.findEmail(email));
        mav.addObject("useremail", email);
        mav.addObject("username", principal.getName());
        return mav;
    }

    @GetMapping(value = "/admin-deleteUser")
    public ModelAndView deleteUserPage(@Param("email") String email, Principal principal) {

        this.userService.delete(email);

        ModelAndView mav = new ModelAndView("admin/customer.html");
        mav.addObject("listAllUser", userService.findAll());
        return mav;
    }

    @RequestMapping(value = "/admin-editUser", method = RequestMethod.POST)
    public ModelAndView editUser(@ModelAttribute("userinput") UserInput userinput, Principal principal) {
        UserDto user = new UserDto();
        List<RoleDto> roleDTO = new ArrayList<>();
        for (String s : userinput.getRole()) {
            roleDTO.add(this.roleConverter.toDTO(this.roleRepository.findByName(s)));
        }
        user.setId(userinput.getId());
        user.setEmail(userinput.getEmail());
        user.setPassword(userinput.getPassword());
        user.setFullName(userinput.getFullName());
        user.setPhone(userinput.getPhone());
        user.setAddress(userinput.getAddress());
        if (userinput.getIsEnabled().equals("true"))  {
            user.setEnabled(true);
        }
        user.setRoleList(roleDTO);

        this.userService.changePassword(user);
        ModelAndView mav = new ModelAndView("admin/customer.html");
        mav.addObject("listAllUser", userService.findAll());
        mav.addObject("username", principal.getName());
        return mav;
    }
}
