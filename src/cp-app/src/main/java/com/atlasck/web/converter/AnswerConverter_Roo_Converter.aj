// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.atlasck.web.converter;

import com.atlasck.domain.Answer;
import com.atlasck.web.converter.AnswerConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect AnswerConverter_Roo_Converter {
    
    declare parents: AnswerConverter implements Converter;
    
    declare @type: AnswerConverter: @FacesConverter("com.atlasck.web.converter.AnswerConverter");
    
    public Object AnswerConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Integer id = Integer.parseInt(value);
        return Answer.findAnswer(id);
    }
    
    public String AnswerConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Answer ? ((Answer) value).getId().toString() : "";
    }
    
}
