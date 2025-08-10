package com.project.MobileShop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.project.MobileShop.entities.Product;
import com.project.MobileShop.services.AdminService;
import com.project.MobileShop.services.ProductService;

@Controller
public class MobileShopController {
	
	@Autowired
	AdminService adminServices;
	
	@GetMapping("/")
	public String homePage() {
		return "index.jsp";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String username,@RequestParam String password,Model m) {
	    String status = adminServices.validateLogin(username, password);
	    m.addAttribute("status", status);
	    return "Status.jsp";
	}
	
	@Autowired
	ProductService proServices;
	@GetMapping("/viewProduct")
	public String viewCustomer(Model model) {
	    List<Product> product = proServices.allProducts();
	    model.addAttribute("list", product);
	    return "Dashboard.jsp";
	}
	
	@GetMapping("/editProduct")
	public String editProduct(@RequestParam("prodid") int prodid, Model model) {
	    Product product = proServices.getCustomerById(prodid);
	    if (product != null) {
	        model.addAttribute("product", product);
	        return "editProduct.jsp";
	    } else {
	        model.addAttribute("status", "Product not found");
	        return "Status.jsp";
	    }
	}
	@PostMapping("/updateProduct")
	public String updateProduct(Product product, Model model) {
	    String status = proServices.updateProduct(product);
	    model.addAttribute("status", status);
	    return "redirect:/viewProduct"; 
	}
	
	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("prodid") int prodId, Model model) {
	    String status = proServices.deleteProduct(prodId);
	    if (status.equals("Success")) {
	        return "redirect:/viewProduct";
	    } else {
	        model.addAttribute("status", "Product deletion failed.");
	        return "Status.jsp";
	    }
	}
	
	@GetMapping("/addProduct")
	public String addProduct() {
		return "addProduct.jsp";
	}
	
	@PostMapping("/insertProduct")
	public String addCustomer(Product product, Model m) {
        String status = proServices.insertNewProduct(product);
        m.addAttribute("status", status);
        return "Status.jsp";
    }
	

}
