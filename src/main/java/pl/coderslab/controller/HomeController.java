package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class HomeController {

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/home")
    public String home(){
        return "home";
    }

    @RequestMapping("/aboutUs")
    public String aboutUs(){
        return "aboutUs";
    }

    @RequestMapping("/program")
    public String program(){
        return "program/show";
    }

    /*@RequestMapping("/camp")
    public String camp(){
        return "camp/show";
    }*/

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
}