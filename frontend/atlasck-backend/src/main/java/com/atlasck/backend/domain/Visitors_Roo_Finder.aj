// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.atlasck.backend.domain;

import com.atlasck.backend.domain.Visitors;
import java.lang.String;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Visitors_Roo_Finder {
    
    public static TypedQuery<Visitors> Visitors.findVisitorsesByNicknameEquals(String nickname) {
        if (nickname == null || nickname.length() == 0) throw new IllegalArgumentException("The nickname argument is required");
        EntityManager em = Visitors.entityManager();
        TypedQuery<Visitors> q = em.createQuery("SELECT o FROM Visitor AS o WHERE o.nickname = :nickname", Visitors.class);
        q.setParameter("nickname", nickname);
        return q;
    }
    
}
