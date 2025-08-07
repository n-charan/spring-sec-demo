//package com.example.spring_sec_demo.service;
//
//
//import com.example.spring_sec_demo.model.Student;
//import com.example.spring_sec_demo.model.UserPrinciple;
//import com.example.spring_sec_demo.repo.Studentrepo;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.*;
//import org.springframework.stereotype.Service;
//
//@Service
//public class MyUserDetailsService implements UserDetailsService {
//
//    @Autowired
//    private Studentrepo repo;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException
//    {
//        Student student=repo.findByUsername(username);
//
//        if(student==null){
//            System.out.println("Not Found");
//            throw new UsernameNotFoundException("User not found with username: " + username);
//
//        }
//        return new UserPrinciple(student);
//    }
//
//
//}
