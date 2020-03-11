package group.object_registry.controller;

import group.object_registry.Entity.Customer;
import group.object_registry.Service.AddressService;
import group.object_registry.Service.AddressServiceImpl;
import group.object_registry.Service.CustomerService;
import group.object_registry.Service.CustomerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CustomerController {
    @Autowired
     CustomerService customerService = new CustomerServiceImpl();

    @Autowired
    AddressService addressService = new AddressServiceImpl();

    @RequestMapping(value = "/customers", method = RequestMethod.GET)
    public ModelAndView customers(){
        List<Customer> list = customerService.listCustomerAddress();
        ModelAndView model = new ModelAndView();
        model.setViewName("customers");
        model.addObject("customer", list);
        return model;
    }

    @RequestMapping(value = "/newCustomer")
    public String newCustomer(Model model) {
        model.addAttribute("customer", new Customer());
        return "/newCustomer";
    }

    @RequestMapping(value ="/addCustomer", method=RequestMethod.POST)
    public ModelAndView addCustomer(@ModelAttribute("customer") Customer customer){
        customerService.addCustomer(customer);
        return new ModelAndView("redirect:/customers");
    }

    @RequestMapping(value ="/deleteCustomer/={id}", method=RequestMethod.GET)
    public ModelAndView deleteCustomer(@PathVariable("id") Long id){
        customerService.deleteCustomer(id);
        return new ModelAndView("redirect:/customers");
    }

    @RequestMapping(value = "/viewCustomer/={id}")
    public String viewCustomer(@PathVariable Long id, Model model) {
        Customer customer = customerService.getById(id);
        model.addAttribute("customer", customer);
        //model.addObject("customer", customer);
        return "/viewCustomer";
    }

    @RequestMapping(value ="/update", method=RequestMethod.GET)
    public ModelAndView updateCustomer(@ModelAttribute("customer") Customer customer){
        customerService.update(customer);
        return new ModelAndView("redirect:/customers");
    }
}
