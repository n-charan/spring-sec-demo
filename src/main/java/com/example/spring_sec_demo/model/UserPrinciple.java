//package com.example.spring_sec_demo.model;
//
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//
//import java.util.Collection;
//import java.util.Collections;
//
//public class UserPrinciple implements UserDetails {
//
//
//    public Student student;
//
//    public UserPrinciple(Student student) {
//        this.student = student;
//    }
//
//    @Override
//    public Collection<? extends GrantedAuthority> getAuthorities() {
//        return Collections.singleton(new SimpleGrantedAuthority("Student"));
//    }
//
//    @Override
//    public String getPassword() {
//        return student.getPassword();
//    }
//
//    @Override
//    public String getUsername() {
//        return student.getName();
//    }
//
////    @Override
////    public boolean isAccountNonExpired() {
////        return UserDetails.super.isAccountNonExpired();
////    }
////
////    @Override
////    public boolean isAccountNonLocked() {
////        return UserDetails.super.isAccountNonLocked();
////    }
////
////    @Override
////    public boolean isCredentialsNonExpired() {
////        return UserDetails.super.isCredentialsNonExpired();
////    }
////
////    @Override
////    public boolean isEnabled() {
////        return UserDetails.super.isEnabled();
////    }
//}
