package com.atlasck.domain;
import java.util.List;
import javax.persistence.Column;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "answer")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "question" })
public class Answer {

    @Column(name = "answer", columnDefinition = "TEXT")
    private String answer;
}