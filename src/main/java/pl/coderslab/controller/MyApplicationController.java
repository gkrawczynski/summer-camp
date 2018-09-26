package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dao.ApplicationDao;
import pl.coderslab.entity.MyApplication;
import pl.coderslab.repository.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/applications")
public class MyApplicationController {

    @Autowired
    private ApplicationDao applicationDao;

    private final MyApplicationRepository myApplicationRepository;
    private final CampRepository campRepository;
    private final ProgramRepository programRepository;
    private final ApplicantRepository applicantRepository;
    private final SkillRepository skillRepository;

    public MyApplicationController(MyApplicationRepository myApplicationRepository, CampRepository campRepository, ProgramRepository programRepository, ApplicantRepository applicantRepository, SkillRepository skillRepository) {
        this.myApplicationRepository = myApplicationRepository;
        this.campRepository = campRepository;
        this.programRepository = programRepository;
        this.applicantRepository = applicantRepository;
        this.skillRepository = skillRepository;
    }

    @RequestMapping("/show")
    public String show() {
        return "myApplication/show";
    }

    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        MyApplication myApplication = applicationDao.findById(id);
        model.addAttribute("application", myApplication);
        return "myApplication/form";
    }

    @RequestMapping("/show/{applicationId}")
    public String show(@PathVariable Integer applicationId, Model model) {
        System.out.println(myApplicationRepository.findOne(applicationId));
        model.addAttribute("application", myApplicationRepository.findOne(applicationId) );
        return "myApplication/show";
    }

    @GetMapping("/form")
    public String form(Model model) {
        model.addAttribute("myapp", new MyApplication());
        model.addAttribute("camps", campRepository.findAll());
        model.addAttribute("programs", programRepository.findAll());
        model.addAttribute("applicants", applicantRepository.findAll());
        model.addAttribute("skills", skillRepository.findAll());
        return "myApplication/form";
    }

    @PostMapping("/form")
    public String saveForm(@Valid @ModelAttribute("myapp") MyApplication myApplication, BindingResult result) {
        if(result.hasErrors()){
            System.out.println("has ERRORS");
        }
        System.out.println(myApplication.getId());
        if (myApplication.getId() != null) {
            applicationDao.update(myApplication);
        } else {
            applicationDao.save(myApplication);
        }
        return "redirect:show/"+ myApplication.getId();
    }

    /*@ModelAttribute("camps")
    public List<Camp> camps(){
        return campRepository.findAll();
    }*/


}
