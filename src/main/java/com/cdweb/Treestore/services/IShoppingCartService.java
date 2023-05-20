package com.cdweb.Treestore.services;

import com.cdweb.Treestore.dto.ShoppingCartDto;

import java.util.List;

public interface IShoppingCartService {
    public ShoppingCartDto addProduct(long tree_id, String email);

    public List<ShoppingCartDto> getProduct(String email);

    public List<ShoppingCartDto> updateQuantity(long id, int quantity, String name);

    public ShoppingCartDto getId(long id);

    public void delete(ShoppingCartDto shoppingCartDTO);
}
