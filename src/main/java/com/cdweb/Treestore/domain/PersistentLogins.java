package com.cdweb.Treestore.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "persistent_logins")
public class PersistentLogins {

    @Column
    private String username;
    @Id
    private String series;
    @Column
    private String token;
    @Column
    private Date last_used;
}
