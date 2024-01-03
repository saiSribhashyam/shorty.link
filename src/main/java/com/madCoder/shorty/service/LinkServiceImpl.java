package com.madCoder.shorty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.madCoder.shorty.model.Link;
import com.madCoder.shorty.repo.LinkRepo;

@Service
public class LinkServiceImpl implements LinkService{

	@Autowired
	LinkRepo lr;
	
	@Override
	public String addLink(Link l) {
		// TODO Auto-generated method stub
		lr.save(l);
		return "Link Generated Successfully";
	}
	
	@Override
	public List<Link> getUserLinks(int uid) {
        return lr.findByUid(uid);
    }
	
	@Override
	public String getOg(String s) {
		return lr.getOg(s);
	}

}
