package com.amazon.controllers;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.amazon.models.entities.Product;
import com.amazon.repositories.ProductRepo;
import com.amazon.services.ProductService;

@Controller
public class MainController 
{
    @Autowired
    private ProductRepo productRepo;
    @Autowired
    private ProductService productService;
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String index() 
    {
        return "views/index.jsp";
    }
    @RequestMapping(value="/error1", method=RequestMethod.GET)
    public String error() 
    {
        return "/html/error404.html";
    }
    @GetMapping("/images/{imageName}")
    public ResponseEntity<Resource> renderImage(@PathVariable String imageName) throws IOException
    {
        Resource imageResource = new ClassPathResource("static/images/" + imageName);
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageResource);
    }

    @PostMapping("/product/upload" )
    public String uploadImage(@RequestParam("image") MultipartFile file) 
    {
            try {
                byte[] arr=file.getBytes();
                System.out.println(arr);
            } catch (IOException e) {
                e.printStackTrace();
            }
            Product product=new Product();
            // String fileName = StringUtils.cleanPath(file.getOriginalFilename());
            System.out.println("uploading...");
            try {
                product.setImage(file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
            if(productRepo.save(product)!=null)
            return "redirect:/CreateProduct?msg=Image uploaded successfully!";
            else
            return "redirect:/CreateProduct?msg=Error uploading image.";
    }
    @GetMapping(value="/product/add")
    public String addProduct(Model model) 
    {
        model.addAttribute("product", new Product());
        return "CreateProduct";
    }
    

    @GetMapping(value="/product/getimage/{id}")
    public String getImage(@PathVariable String id,Model model) 
    {
        try {
            byte[] image=productService.getImage(Integer.parseInt(id));
            byte[] encode = java.util.Base64.getEncoder().encode(image);
            model.addAttribute("image", new String(encode, "UTF-8"));
            return "ShowProduct";
        } 
        catch (Exception e) 
        {
            model.addAttribute("message", "Error in getting image");
            return "redirect:/";
        }
    }
}
