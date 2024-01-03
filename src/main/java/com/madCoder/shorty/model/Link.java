package com.madCoder.shorty.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.persistence.Transient;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name="link_table")
public class Link {
	@Id
	@NotNull
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="lid", nullable = false)
    private int lid;
	
	@NotNull
	@Column(name="uid", nullable=false)
	private int uid;
	
	@NotNull
	@Column(name="backhalf", nullable=false)
	private String back;
	
	@NotNull
	@Column(name="oglink", nullable=false)
	private String og;
	
	@Column(name="ltitle")
	private String title;
	
	 @Transient
	 private String formattedDate;
	
	@Column(name="created", nullable=false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date date; 

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getLid() {
		return lid;
	}

	public void setLid(int lid) {
		this.lid = lid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getBack() {
		return back;
	}

	public void setBack(String back) {
		this.back = back;
	}

	public String getOg() {
		return og;
	}

	public void setOg(String og) {
		this.og = og;
	}
	public String getFormattedDate() {
        if (date != null) {
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
            formattedDate = sdf.format(date);
        }
        return formattedDate;
    }
	
}
