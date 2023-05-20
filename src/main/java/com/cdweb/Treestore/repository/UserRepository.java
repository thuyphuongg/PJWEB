package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {

    UserEntity findByEmailIgnoreCaseAndIsEnabled(String email, boolean isActived);

    UserEntity findByEmail(String email);

    UserEntity findByEmailIgnoreCase(String email);

    @Query(value = "select u.* from user u where id=:id",nativeQuery = true)
    UserEntity findUserById(@Param("id") long id);

}
