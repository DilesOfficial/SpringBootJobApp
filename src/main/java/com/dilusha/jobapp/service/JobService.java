package com.dilusha.jobapp.service;

import com.dilusha.jobapp.model.JobPost;
import com.dilusha.jobapp.repository.JobRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepository repository;

    public void addJob(JobPost jobPost) {
        repository.addJob(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return repository.getAllJobs();
    }
}
