// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.atlasck.web;

import com.atlasck.domain.Question;
import com.atlasck.domain.Visitor;
import com.atlasck.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Question, String> ApplicationConversionServiceFactoryBean.getQuestionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.atlasck.domain.Question, java.lang.String>() {
            public String convert(Question question) {
                return new StringBuilder().append(question.getTitle()).append(" ").append(question.getCreatedAt()).append(" ").append(question.getUpdatedAt()).append(" ").append(question.getBody()).toString();
            }
        };
    }
    
    public Converter<Integer, Question> ApplicationConversionServiceFactoryBean.getIdToQuestionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.atlasck.domain.Question>() {
            public com.atlasck.domain.Question convert(java.lang.Integer id) {
                return Question.findQuestion(id);
            }
        };
    }
    
    public Converter<String, Question> ApplicationConversionServiceFactoryBean.getStringToQuestionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.atlasck.domain.Question>() {
            public com.atlasck.domain.Question convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Question.class);
            }
        };
    }
    
    public Converter<Visitor, String> ApplicationConversionServiceFactoryBean.getVisitorToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.atlasck.domain.Visitor, java.lang.String>() {
            public String convert(Visitor visitor) {
                return new StringBuilder().append(visitor.getNickname()).append(" ").append(visitor.getEmail()).append(" ").append(visitor.getCreatedAt()).append(" ").append(visitor.getUpdatedAt()).toString();
            }
        };
    }
    
    public Converter<Integer, Visitor> ApplicationConversionServiceFactoryBean.getIdToVisitorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.atlasck.domain.Visitor>() {
            public com.atlasck.domain.Visitor convert(java.lang.Integer id) {
                return Visitor.findVisitor(id);
            }
        };
    }
    
    public Converter<String, Visitor> ApplicationConversionServiceFactoryBean.getStringToVisitorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.atlasck.domain.Visitor>() {
            public com.atlasck.domain.Visitor convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Visitor.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getQuestionToStringConverter());
        registry.addConverter(getIdToQuestionConverter());
        registry.addConverter(getStringToQuestionConverter());
        registry.addConverter(getVisitorToStringConverter());
        registry.addConverter(getIdToVisitorConverter());
        registry.addConverter(getStringToVisitorConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}