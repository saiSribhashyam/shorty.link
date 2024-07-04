package com.madCoder.shorty.model;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="link_visit")
public class LinkVisit {
	 	public String getLinkId() {
		return linkId;
	}
	public void setLinkId(String linkId) {
		this.linkId = linkId;
	}
	public LocalDateTime getVisitTimestamp() {
		return visitTimestamp;
	}
	public void setVisitTimestamp(LocalDateTime visitTimestamp) {
		this.visitTimestamp = visitTimestamp;
	}
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String linkId;
	    private LocalDateTime visitTimestamp;
//	    private String ipAddress;
//	    private String userAgent;
//	    private String country;
//	    private String region;
//	    private String city;
}
