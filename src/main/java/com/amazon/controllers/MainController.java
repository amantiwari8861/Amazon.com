package com.amazon.controllers;

import java.io.IOException;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController 
{
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String index() 
    {
        return "index";
    }
    @RequestMapping(value="/error", method=RequestMethod.GET)
    public ModelAndView error() 
    {
        // return "redirect:/html/error404.html";
        return new ModelAndView("redirect:" + "/html/error404.html");
    }
    @GetMapping("/images/{imageName}")
    public ResponseEntity<Resource> renderImage(@PathVariable String imageName) throws IOException
    {
        Resource imageResource = new ClassPathResource("static/images/" + imageName);
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageResource);
    }
}
