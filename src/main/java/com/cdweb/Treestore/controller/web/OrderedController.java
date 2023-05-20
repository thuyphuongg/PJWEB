package com.cdweb.Treestore.controller.web;


import com.cdweb.Treestore.api.input.OrderedInput;
import com.cdweb.Treestore.api.output.CartOutput;
import com.cdweb.Treestore.dto.*;
import com.cdweb.Treestore.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
public class OrderedController {
    @Autowired
    private IShoppingCartService shoppingCartService;
    @Autowired
    private IUserService userService;
    @Autowired
    private IOrderedService orderedService;
    @Autowired
    private ITreeService treeService;
    @Autowired
    private IOrderItemService orderItemService;

    @PostMapping("/dat-hang")
    public ModelAndView payment(@ModelAttribute("orderedInput") OrderedInput orderedInput, Principal principal) {
        List<OrderedItemDto> itemList = new ArrayList<>();
        double total_price = 0;
        for (Long s : orderedInput.getCarts()) {
            ShoppingCartDto shoppingCartDTO = this.shoppingCartService.getId(s);
            double total = shoppingCartDTO.getTree().getPrice() * (1 - shoppingCartDTO.getTree().getDiscount() / 100) * shoppingCartDTO.getQuantity();
            total_price += total;
            OrderedItemDto orderedItem = new OrderedItemDto();
            orderedItem.setTotalPrice(total);
            if (shoppingCartDTO.getQuantity() > shoppingCartDTO.getTree().getQuantity()) {
                orderedItem.setQuantity(shoppingCartDTO.getTree().getQuantity());
            } else {
                orderedItem.setQuantity(shoppingCartDTO.getQuantity());
            }

            orderedItem.setTree(shoppingCartDTO.getTree());
            itemList.add(orderedItem);
            this.shoppingCartService.delete(shoppingCartDTO);
        }
        OrderedDto orderedDTO = new OrderedDto();
        orderedDTO.setOrderedDate(new Timestamp(new Date().getTime()));
        orderedDTO.setReceivedDate(null);
        orderedDTO.setStatus("ĐANG XỬ LÝ");
        orderedDTO.setTotalPrice(total_price + 25000);
        orderedDTO.setName(orderedInput.getName());
        orderedDTO.setPhone(orderedInput.getPhone());
        orderedDTO.setAddress(orderedInput.getAddress());
        orderedDTO.setUser(this.userService.findByEmail(principal.getName()));
        orderedDTO.setOrderedItemList(itemList);

        OrderedDto resultOrdered = this.orderedService.save(orderedDTO);

        for (OrderedItemDto orderedItem : itemList) {
            orderedItem.setOrdered(resultOrdered);
            this.orderItemService.save(orderedItem);
            TreeDto tree = orderedItem.getTree();
            tree.setQuantity(tree.getQuantity() - orderedItem.getQuantity());
            this.treeService.save(tree);
        }
        return new ModelAndView("web/dat-hang-thanh-cong.html");
    }

    @PostMapping("/thanh-toan")
    public ModelAndView postPayment(@ModelAttribute("orderedInput") OrderedInput orderedInput, Principal principal) {
        if (principal == null) {
            return new ModelAndView("web/dang-nhap.html");
        }
        CartOutput cartOutput = new CartOutput();
        double total = 0;
        for (Long s : orderedInput.getCarts()) {
            ShoppingCartDto shoppingCartDTO = this.shoppingCartService.getId(s);
            total += shoppingCartDTO.getTree().getPrice() * (1 - shoppingCartDTO.getTree().getDiscount() / 100) * shoppingCartDTO.getQuantity();
            cartOutput.getList().add(shoppingCartDTO);
        }
        cartOutput.setTotal(total);
        ModelAndView mav = new ModelAndView("web/thanh-toan.html");
        mav.addObject("output", cartOutput);
        UserDto user = this.userService.findByEmail(principal.getName());
        user.setPassword("");
        mav.addObject("user", user);
        return mav;
    }
    @GetMapping("/don-hang")
    public List<OrderedDto> getOrdered(Principal principal) {
        return this.orderedService.findAllOrder(principal.getName());
    }

    @GetMapping("/thanh-toan")
    public ModelAndView getPayment(@RequestParam(name = "id", required = false, defaultValue = "null") Long id, Principal principal) {
        if (principal == null) {
            return new ModelAndView("web/dang-nhap.html");
        } else {
            ShoppingCartDto temp = this.shoppingCartService.addProduct(id, principal.getName());
            this.shoppingCartService.updateQuantity(temp.getTree().getId(), 1, principal.getName());
            ShoppingCartDto dto = this.shoppingCartService.getId(temp.getId());
            CartOutput cartOutput = new CartOutput();
            cartOutput.getList().add(dto);
            cartOutput.setTotal(dto.getTree().getPrice() * (1 - dto.getTree().getDiscount() / 100));
            ModelAndView mav = new ModelAndView("web/thanh-toan.html");
            mav.addObject("output", cartOutput);
            UserDto user = this.userService.findByEmail(principal.getName());
            user.setPassword("");
            mav.addObject("user", user);
            return mav;
        }
    }

}
