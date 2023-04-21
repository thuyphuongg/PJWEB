package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.domain.PasswordResetToken;
import com.cdweb.Treestore.domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PasswordResetTokenRepository extends CrudRepository<PasswordResetToken, String> {
    PasswordResetToken findByToken(String token);

    List<PasswordResetToken> findByUser(User user);
}
