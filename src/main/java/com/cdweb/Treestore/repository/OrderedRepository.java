package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.entity.OrderedEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderedRepository extends JpaRepository<OrderedEntity, Long> {
    List<OrderedEntity> findAllByUserId(long id);

    @Query(value = "select o.* from ordered o where id=:id", nativeQuery = true)
    OrderedEntity findId(@Param("id") long id);
}
