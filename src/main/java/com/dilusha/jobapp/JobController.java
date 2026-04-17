package com.dilusha.jobapp;

import com.dilusha.jobapp.model.JobPost;
import com.dilusha.jobapp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobController {

    @Autowired
    private JobService jobService;

    @RequestMapping({"/", "home"})
    public String home(){
        return "home";
    }

    @GetMapping("addjob")
    public String addJob(){
        return "addjob";
    }

    @RequestMapping("viewalljobs")
    public String viewAllJobs(){
        return "viewalljobs";
    }

    @PostMapping("handleForm")
    public String handleForm(JobPost jobPost){
        jobService.addJob(jobPost);
        return "success";
    }
}
