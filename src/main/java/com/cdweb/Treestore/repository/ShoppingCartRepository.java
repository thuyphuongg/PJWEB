package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.entity.ShoppingCartEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShoppingCartRepository extends JpaRepository<ShoppingCartEntity,Long> {
    @Query(value = "select s.* from shopping_cart s where s.tree_id=:tree_id and user_id=:user_id",nativeQuery = true)
    public ShoppingCartEntity findCart(@Param("tree_id") long tree_id,@Param("user_id") long user_id);

    @Query(value = "select count(s.id) from shopping_cart s where user_id=:user_id ",nativeQuery = true)
    public int countTree(@Param("user_id")long user_id);

    @Query(value = "select s.* from shopping_cart s where user_id=:user_id ORDER BY s.id desc",nativeQuery = true)
    public List<ShoppingCartEntity> findAllByUser(@Param("user_id") long user_id);
    public ShoppingCartEntity findById(long id);

}
