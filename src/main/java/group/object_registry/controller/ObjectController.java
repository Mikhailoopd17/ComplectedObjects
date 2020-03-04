package group.object_registry.controller;

import group.object_registry.Entity.AObject;
import group.object_registry.Entity.Contract;
import group.object_registry.Service.CustomerService;
import group.object_registry.Service.CustomerServiceImpl;
import group.object_registry.Service.ObjectService;
import group.object_registry.Service.ObjectServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ObjectController{
    @Autowired
    private CustomerService customerService = new CustomerServiceImpl();
    @Autowired
    private ObjectService objectService = new ObjectServiceImpl();

    @RequestMapping(value = "/objects", method = RequestMethod.GET)
    public ModelAndView objects(){
        List<Contract> list = objectService.list();
        ModelAndView model = new ModelAndView();
        model.setViewName("objects");
        model.addObject("objects", list);
        return model;
    }

    @RequestMapping(value = "/newObject")
    public String newObject(Model model) {
        List<String> names = customerService.id_names();
        model.addAttribute("object", new AObject());
        model.addAttribute("customers", names);
        return "/newObject";
    }

    @RequestMapping(value ="/addObject", method=RequestMethod.POST)
    public ModelAndView addObject(@ModelAttribute("object") AObject obj){
        Contract object = obj.getEntityObject();
        object.setCustomer(customerService.getById(obj.getIdCustomer()));
        objectService.add(object);
        return new ModelAndView("redirect:/objects");
    }

}
