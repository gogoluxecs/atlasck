// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.atlasck.backend.domain;

import java.lang.String;

privileged aspect Questions_Roo_ToString {
    
    public String Questions.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Answerss: ").append(getAnswerss() == null ? "null" : getAnswerss().size()).append(", ");
        sb.append("CreatedAt: ").append(getCreatedAt()).append(", ");
        sb.append("EmailAnswer: ").append(getEmailAnswer()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Question: ").append(getQuestion()).append(", ");
        sb.append("Title: ").append(getTitle()).append(", ");
        sb.append("UpdatedAt: ").append(getUpdatedAt()).append(", ");
        sb.append("Visible: ").append(getVisible()).append(", ");
        sb.append("VisitorsId: ").append(getVisitorsId());
        return sb.toString();
    }
    
}