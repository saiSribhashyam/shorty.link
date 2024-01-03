package com.madCoder.shorty.service;
import com.madCoder.shorty.model.User;
public interface UserService {
 public String addUser(User u);
 public User checkUserlogin(String email, String pwd); 
}
