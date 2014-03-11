package com.vub.model;

public class Enrollment implements Comparable<Enrollment> {
	private Course course;
	private int academicYear;
	
	public Enrollment(Course course, int academicYear) {
		this.course = course;
		this.academicYear = academicYear;
	}
	
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public int getAcademicYear() {
		return academicYear;
	}
	public void setAcademicYear(int academicYear) {
		this.academicYear = academicYear;
	}

	public int compareTo(Enrollment o) {
		return this.course.compareTo(o.getCourse());
	}
	
}