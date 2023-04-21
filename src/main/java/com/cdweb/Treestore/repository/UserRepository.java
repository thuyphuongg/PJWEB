package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.domain.User;
import com.cdweb.Treestore.dto.UserDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmailIgnoreCaseAndIsEnabled(String email, boolean isActived);

    User findByEmail(String email);

    User findByEmailIgnoreCase(String email);

    @Query(value = "select u.* from user u where id=:id",nativeQuery = true)
    User findUserById(@Param("id") long id);

}
