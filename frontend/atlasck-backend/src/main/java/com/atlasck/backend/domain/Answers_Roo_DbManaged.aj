// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.atlasck.backend.domain;

import com.atlasck.backend.domain.Questions;
import java.lang.String;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Answers_Roo_DbManaged {

    @ManyToOne
    @JoinColumn(name = "questions_id", referencedColumnName = "id", nullable = false)
    private Questions Answers.questionsId;

    @Column(name = "answer", columnDefinition="TEXT")
    private String Answers.answer;

    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Answers.createdAt;

    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Answers.updatedAt;

    public Questions Answers.getQuestionsId() {
        return this.questionsId;
    }

    public void Answers.setQuestionsId(Questions questionsId) {
        this.questionsId = questionsId;
    }

    public String Answers.getAnswer() {
        return this.answer;
    }

    public void Answers.setAnswer(String answer) {
        this.answer = answer;
    }

    public Date Answers.getCreatedAt() {
        return this.createdAt;
    }

    public void Answers.setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date Answers.getUpdatedAt() {
        return this.updatedAt;
    }

    public void Answers.setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

}
