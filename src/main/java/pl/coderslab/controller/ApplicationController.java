package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dao.ApplicationDao;
import pl.coderslab.entity.Application;
import pl.coderslab.repository.ApplicationRepository;

@Controller
@RequestMapping("/applications")
public class ApplicationController {

    @Autowired
    private ApplicationDao applicationDao;

    private final ApplicationRepository applicationRepository;

    public ApplicationController(ApplicationRepository applicationRepository) {
        this.applicationRepository = applicationRepository;
    }

    @RequestMapping("/show")
    public String show() {
        return "application/show";
    }

    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        Application application = applicationDao.findById(id);
        model.addAttribute("application", application);
        return "application/form";
    }

    @RequestMapping("/show/{applicationId}")
    public String show(@PathVariable Integer applicationId, Model model) {
        System.out.println(applicationRepository.findOne(applicationId));
        model.addAttribute("application", applicationRepository.findOne(applicationId) );
        return "application/show";
    }

    @GetMapping("/form")
    public String form(Model model) {
        model.addAttribute("application", new Application());
        return "application/form";
    }

    @PostMapping("/form")
    public String saveForm(@ModelAttribute Application application) {
        System.out.println(application.getId());
        if (application.getId() != null) {
            applicationDao.update(application);
        } else {
            applicationDao.save(application);
        }
        return "redirect:show/"+application.getId();
    }


}
