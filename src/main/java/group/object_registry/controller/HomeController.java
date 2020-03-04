package group.object_registry.controller;

import group.object_registry.Entity.Director;
import group.object_registry.Service.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    DirectorService directorService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home(){
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        return model;
    }
    @RequestMapping(value = "/some", method = RequestMethod.GET)
    public ModelAndView some(){
        List<Director> list = directorService.list();
        ModelAndView model = new ModelAndView();
        model.setViewName("some");
        model.addObject("directors", list);
        return model;
    }
}
