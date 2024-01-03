package com.madCoder.shorty.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;



import com.madCoder.shorty.model.User;

@Repository
public interface UserRepo extends JpaRepository<User, Integer>{
 @Query("select u from User u where email=?1 and password=?2")
 public User checkLogin(String email,String psw);
}
