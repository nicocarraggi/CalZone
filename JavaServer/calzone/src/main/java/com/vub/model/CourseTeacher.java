package com.vub.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Every course has a teacher or a set of teachers. This class maps the teaching-end of the relation. 
 * @author Sam
 *
 */
@Entity
@Table(name = "COURSE_TEACHER")
public class CourseTeacher {
	@Id
	@GeneratedValue
	@Column(name="CourseTeacherID")
	private int id;
	
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL)
	private List<CourseTeacherAssociation> teachers;
}