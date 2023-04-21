package com.cdweb.Treestore.repository;

import com.cdweb.Treestore.domain.ConfirmationToken;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ConfirmationTokenRepository extends CrudRepository<ConfirmationToken, String> {
    ConfirmationToken findByConfirmationToken(String confirmationToken);

    List<ConfirmationToken> findByUserId(long id);
}
