package com.madCoder.shorty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.madCoder.shorty.model.LinkVisit;
import com.madCoder.shorty.repo.LinkVisitRepo;

@Service
public class LinkVisitSvc {

		@Autowired
		private LinkVisitRepo lvrep;
		
		
		public String add(LinkVisit lv) {
			lvrep.save(lv);
			return "Registered Successfully";
		}
		
}
