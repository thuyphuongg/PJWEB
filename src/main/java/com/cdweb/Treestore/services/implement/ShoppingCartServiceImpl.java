package com.cdweb.Treestore.services.implement;

import com.cdweb.Treestore.convert.ShoppingCartConvert;
import com.cdweb.Treestore.convert.TreeConvert;
import com.cdweb.Treestore.convert.UserConvert;
import com.cdweb.Treestore.dto.ShoppingCartDto;
import com.cdweb.Treestore.dto.TreeDto;
import com.cdweb.Treestore.dto.UserDto;
import com.cdweb.Treestore.entity.ShoppingCartEntity;
import com.cdweb.Treestore.repository.ShoppingCartRepository;
import com.cdweb.Treestore.services.IShoppingCartService;
import com.cdweb.Treestore.services.ITreeService;
import com.cdweb.Treestore.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ShoppingCartServiceImpl implements IShoppingCartService {
    @Autowired
    private TreeConvert treeConvert;
    @Autowired
    private UserConvert userConvert;
    @Autowired
    private ShoppingCartRepository shoppingCartRepository;
    @Autowired
    private ITreeService treeService;
    @Autowired
    private IUserService userService;
    @Autowired
    private ShoppingCartConvert shoppingCartConvert;

    @Override
    public ShoppingCartDto addProduct(long tree_id, String email) {
        UserDto user = this.userService.findByEmail(email);
        if (tree_id != 0) {
            TreeDto tree = this.treeService.findById(tree_id);
            ShoppingCartEntity entity = this.shoppingCartRepository.findCart(tree.getId(), user.getId());

            ShoppingCartDto cart = new ShoppingCartDto();
            if (entity == null) {
                cart.setTree(tree);
                cart.setUser(user);
                cart.setQuantity(1);
            } else {
                cart.setId(entity.getId());
                cart.setTree(tree);
                cart.setUser(user);
                cart.setQuantity(entity.getQuantity() + 1);
            }
            ShoppingCartEntity test = this.shoppingCartConvert.toEntity(cart);
            ShoppingCartEntity entity1 = this.shoppingCartRepository.save(test);

            return this.shoppingCartConvert.toDTO(entity1);
        }
        return null;
    }

    @Override
    public List<ShoppingCartDto> getProduct(String email) {
        UserDto user = this.userService.findByEmail(email);
        List<ShoppingCartEntity> cartEntities = this.shoppingCartRepository.findAllByUser(user.getId());
        List<ShoppingCartDto> cartList = new ArrayList<>();
        for (ShoppingCartEntity s : cartEntities) {

            cartList.add(this.shoppingCartConvert.toDTO(s));
        }
        return cartList;
    }

    @Override
    public List<ShoppingCartDto> updateQuantity(long id, int quantity, String name) {
        UserDto user = this.userService.findByEmail(name);
        ShoppingCartEntity cartEntity = this.shoppingCartRepository.findCart(id, user.getId());


        if (quantity == 0) {
            this.shoppingCartRepository.delete(cartEntity);
            return getProduct(user.getEmail());
        } else {
            cartEntity.setQuantity(quantity);
            this.shoppingCartRepository.save(cartEntity);
            return getProduct(user.getEmail());
        }
    }

    @Override
    public ShoppingCartDto getId(long id) {
        return this.shoppingCartConvert.toDTO(this.shoppingCartRepository.findById(id));
    }

    @Override
    public void delete(ShoppingCartDto shoppingCartDto) {
        this.shoppingCartRepository.delete(this.shoppingCartConvert.toEntity(shoppingCartDto));
    }
}

