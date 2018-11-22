package com.aaa.entity;

import java.io.Serializable;

public class Employees implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long employeeNumber;
	private String lastName;
	private String firstName;
	private String extension;
	private String email;
	private String officeCode;
	private long reportsTo;
	private String jobTitle;

	public long getEmployeeNumber() {
		return employeeNumber;
	}

	public void setEmployeeNumber(long employeeNumber) {
		this.employeeNumber = employeeNumber;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOfficeCode() {
		return officeCode;
	}

	public void setOfficeCode(String officeCode) {
		this.officeCode = officeCode;
	}

	public long getReportsTo() {
		return reportsTo;
	}

	public void setReportsTo(long reportsTo) {
		this.reportsTo = reportsTo;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public Employees(long employeeNumber, String lastName, String firstName,
			String extension, String email, String officeCode, long reportsTo,
			String jobTitle) {
		super();
		this.employeeNumber = employeeNumber;
		this.lastName = lastName;
		this.firstName = firstName;
		this.extension = extension;
		this.email = email;
		this.officeCode = officeCode;
		this.reportsTo = reportsTo;
		this.jobTitle = jobTitle;
	}

	public Employees() {
		super();
	}

	@Override
	public String toString() {
		return "Employees [employeeNumber=" + employeeNumber + ", lastName="
				+ lastName + ", firstName=" + firstName + ", extension="
				+ extension + ", email=" + email + ", officeCode=" + officeCode
				+ ", reportsTo=" + reportsTo + ", jobTitle=" + jobTitle + "]";
	}

}
