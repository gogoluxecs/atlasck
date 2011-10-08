// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.atlasck.backend.web;

import com.atlasck.backend.domain.CurrentVersion;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect CurrentVersionController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String CurrentVersionController.create(@Valid CurrentVersion currentVersion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("currentVersion", currentVersion);
            return "currentversions/create";
        }
        uiModel.asMap().clear();
        currentVersion.persist();
        return "redirect:/currentversions/" + encodeUrlPathSegment(currentVersion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String CurrentVersionController.createForm(Model uiModel) {
        uiModel.addAttribute("currentVersion", new CurrentVersion());
        return "currentversions/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String CurrentVersionController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("currentversion", CurrentVersion.findCurrentVersion(id));
        uiModel.addAttribute("itemId", id);
        return "currentversions/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String CurrentVersionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("currentversions", CurrentVersion.findCurrentVersionEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) CurrentVersion.countCurrentVersions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("currentversions", CurrentVersion.findAllCurrentVersions());
        }
        return "currentversions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String CurrentVersionController.update(@Valid CurrentVersion currentVersion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("currentVersion", currentVersion);
            return "currentversions/update";
        }
        uiModel.asMap().clear();
        currentVersion.merge();
        return "redirect:/currentversions/" + encodeUrlPathSegment(currentVersion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String CurrentVersionController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("currentVersion", CurrentVersion.findCurrentVersion(id));
        return "currentversions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String CurrentVersionController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CurrentVersion.findCurrentVersion(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/currentversions";
    }
    
    @ModelAttribute("currentversions")
    public Collection<CurrentVersion> CurrentVersionController.populateCurrentVersions() {
        return CurrentVersion.findAllCurrentVersions();
    }
    
    String CurrentVersionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
