// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.atlasck.backend.domain;

import com.atlasck.backend.domain.Answers;
import com.atlasck.backend.domain.Questions;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Answers_Roo_Finder {
    
    public static TypedQuery<Answers> Answers.findAnswersesByQuestionsId(Questions questionsId) {
        if (questionsId == null) throw new IllegalArgumentException("The questionsId argument is required");
        EntityManager em = Answers.entityManager();
        TypedQuery<Answers> q = em.createQuery("SELECT o FROM Answer AS o WHERE o.questionsId = :questionsId", Answers.class);
        q.setParameter("questionsId", questionsId);
        return q;
    }
    
}