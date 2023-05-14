package com.cdweb.Treestore.controller.web;

import com.cdweb.Treestore.dto.ShoppingCartDto;
import com.cdweb.Treestore.services.IShoppingCartService;
//import com.cdweb.api.web.output.CartOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

@RestController
public class ShoppingCartController {
    @Autowired
    private IShoppingCartService shoppingCartService;

    @GetMapping("/gio-hang")
    public ModelAndView shoppingCart(Principal principal) {
        return principal == null ? new ModelAndView("web/dang-nhap.html") : new ModelAndView("web/gio-hang.html");
    }

    @GetMapping("/them-san-pham")
    public ShoppingCartDto addProduct(@RequestParam(name = "id_tree", required = false, defaultValue = "0") long id_tree, Principal principal) {
        if (principal == null) {
            return null;
        }
        String email = principal.getName();
        return this.shoppingCartService.addProduct(id_tree, email);
    }


    @GetMapping("/cart-item")
    public ShoppingCartDto getItems(Principal principal) {
        ShoppingCartDto output = new ShoppingCartDto();
        String email = principal.getName();
        List<ShoppingCartDto> cartList = this.shoppingCartService.getProduct(email);
        double total = 0;
        for (ShoppingCartDto cart : cartList) {
            total += cart.getTree().getPrice() *  (1 - cart.getTree().getDiscount() / 100) * cart.getQuantity();
        }
        output.setTotal(total);
        output.setList(cartList);
        return output;
    }

    @GetMapping("/update-quantity")
    public ShoppingCartDto updateQuantity(@Param("id") long id, @Param("quantity") int quantity, Principal principal) {

        ShoppingCartDto output = new ShoppingCartDto();
        String email = principal.getName();
        List<ShoppingCartDto> cartList = this.shoppingCartService.updateQuantity(id, quantity, email);
        double total = 0;
        for (ShoppingCartDto cart : cartList) {
            total += cart.getTree().getPrice()* cart.getQuantity();
        }
        output.setTotal(total);
        output.setList(cartList);
        return output;

    }
}
