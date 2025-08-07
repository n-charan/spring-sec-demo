package com.example.spring_sec_demo.repo;


import com.example.spring_sec_demo.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Studentrepo extends JpaRepository<Student,Integer> {


    Student findByUsername(String username);
}
