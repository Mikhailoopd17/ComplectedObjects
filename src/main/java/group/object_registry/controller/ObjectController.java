package group.object_registry.controller;

import group.object_registry.Entity.EntityObject;
import group.object_registry.Entity.SomeObj;
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
        List<EntityObject> list = objectService.list();
        ModelAndView model = new ModelAndView();
        model.setViewName("objects");
        model.addObject("objects", list);
        return model;
    }

    @RequestMapping(value = "/newObject")
    public String newObject(Model model) {
        List<String> names = customerService.id_names();
        model.addAttribute("object", new SomeObj());
        model.addAttribute("customers", names);
        return "/newObject";
    }

    @RequestMapping(value ="/addObject", method=RequestMethod.POST)
    public ModelAndView addObject(@ModelAttribute("object") SomeObj obj){
        String [] name = obj.getCustom().split("-");
        int id = Integer.parseInt(name[0]);
        EntityObject object = obj.getEntityObject();
        object.setCustomer(customerService.getById(id));
        objectService.add(object);
        return new ModelAndView("redirect:/objects");
    }

}
