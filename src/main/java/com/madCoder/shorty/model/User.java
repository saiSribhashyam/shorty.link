package com.madCoder.shorty.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="user_table")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="uid", nullable = false)
    private int id;

    @NotBlank(message = "Name is required")
    @Column(name="uname", nullable = false)
    private String name;

    @NotBlank(message = "Date of birth is required")
    @Column(name="udob", nullable = false)
    private String dob;

    @NotBlank(message = "Email is required")
    @Column(name="email", nullable = false, unique=true)
    private String email;

    @NotBlank(message = "Password is required")
    @Column(name="password", nullable = false)
    private String password;

    @NotBlank(message = "Mobile number is required")
    @Size(min = 10, max = 15, message = "Mobile number must be between 10 and 15 characters")
    @Pattern(regexp = "[0-9]+", message = "Mobile number must contain only digits")
    @Column(name="mobile", nullable = false)
    private String mobileno;

    @NotNull(message = "Active status is required")
    @Column(name="user_active", nullable = false)
    private Boolean active;
    // getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
}

