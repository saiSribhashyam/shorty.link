package com.madCoder.shorty.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.madCoder.shorty.model.Link;

@Repository
public interface LinkRepo extends JpaRepository<Link, Integer> {
	
	@Query("SELECT COUNT(*) > 0 AS exists from Link l where l.back=?1")
	public boolean isAvlbl(String back);
	
	@Query(value = "SELECT * FROM link_table WHERE uid =?1", nativeQuery = true)
    List<Link> findByUid(int uid);
	
	@Query(value="SELECT oglink from link_table where backhalf=?1", nativeQuery=true)
	String getOg(String back);
	
	

}

/*
SELECT COUNT(*) > 0 AS exists
FROM shortened_urls
WHERE back_half = 'your_back_half_value';
*/