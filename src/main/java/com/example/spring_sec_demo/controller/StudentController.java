package com.example.spring_sec_demo.controller;


import com.example.spring_sec_demo.model.Student;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.catalina.User;
//import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudentController {


    @GetMapping("/hello")
    public String greet(){
        return "Hello Azure!!!";
    }

//    @PostMapping("/addstudent")
//    public String addStudent(Student student)
//    {
//        return "added";
//    }
//    @GetMapping("csrftoken")
//    public CsrfToken getToken(HttpServletRequest request){
//        return (CsrfToken) request.getAttribute(CsrfToken.class.getName());
//    }
}
