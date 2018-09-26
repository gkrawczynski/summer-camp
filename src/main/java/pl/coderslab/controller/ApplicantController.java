package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dao.ApplicantDao;
import pl.coderslab.entity.Applicant;
import pl.coderslab.repository.ApplicantRepository;

@Controller
@RequestMapping("/applicants")
public class ApplicantController {
    @Autowired
    private ApplicantDao applicantDao;

    private final ApplicantRepository applicantRepository;

    public ApplicantController(ApplicantRepository applicantRepository) {
        this.applicantRepository = applicantRepository;
    }

    @RequestMapping("/show")
    public String show() {
        return "applicant/show";
    }

    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        Applicant applicant = applicantDao.findById(id);
        model.addAttribute("applicant", applicant);
        return "applicant/form";
    }

    @RequestMapping("/show/{applicantId}")
    public String show(@PathVariable Integer applicantId, Model model) {
        System.out.println(applicantRepository.findOne(applicantId));
        model.addAttribute("applicant", applicantRepository.findOne(applicantId) );
        return "applicant/show";
    }

    @RequestMapping("/showAdmin")
    public String showAdmin(Model model) {
        System.out.println(applicantRepository.findAll());
        model.addAttribute("applicants", applicantRepository.findAll() );
        return "applicant/showAdmin";
    }

    @GetMapping("/form")
    public String form(Model model) {
        model.addAttribute("applicant", new Applicant());
        return "applicant/form";
    }

    @PostMapping("/form")
    public String saveForm(@ModelAttribute Applicant applicant) {
        System.out.println(applicant.getId());
        if (applicant.getId() != null) {
            applicantDao.update(applicant);
        } else {
            applicantDao.save(applicant);
        }
        return "redirect:show/"+applicant.getId();
    }

    @RequestMapping("/delete/{id}")
    public String deleteYes(@PathVariable Integer id) {
        applicantDao.delete(id);
        return "redirect:../showAdmin";
    }

}
