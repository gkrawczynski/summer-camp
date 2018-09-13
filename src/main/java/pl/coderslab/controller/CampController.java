package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.dao.CampDao;
import pl.coderslab.entity.Camp;
import pl.coderslab.repository.CampRepository;

import java.util.Collection;

@Controller
@RequestMapping("/camps")
public class CampController {
    @Autowired
    private CampDao campDao;

    private final CampRepository campRepository;

    public CampController(CampRepository campRepository) {
        this.campRepository = campRepository;
    }

    /*@RequestMapping("/show")
    public String show() {
        return "camp/show";
    }*/

    /*@ModelAttribute("camps")
    public Collection<Camp> camps() {
        return campDao.findAll();
    }*/

    @RequestMapping("/show")
    public String show(Model model) {
        System.out.println(campRepository.findAll());
        model.addAttribute("camps", campRepository.findAll() );
        return "camp/show";
    }

    @RequestMapping("/show/{campId}")
    public String details(@PathVariable Integer campId, Model model) {
        System.out.println(campRepository.findOne(campId));
        model.addAttribute("camp", campRepository.findOne(campId));
        return "camp/details";
    }

}
