<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<!-- Bootstrap core CSS -->
<body>
<div class="col-lg-12" id="mainBody5">
		<div class="row">
			<h1>
				Creating new Course&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-primary" data-loading-text="Loading..." id="myBtnBackCourse">
					<span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Return
				</button>
				&nbsp;
				<button type="button" class="btn btn-success" id="myBtnAddComponent">
					<span class="glyphicon glyphicon-plus"></span>&nbsp;Add Course Component
				</button>
			</h1>
			<br>
		</div>

		<div class="row">
			<table class="table table-hover table-responsive" id="record">
				<tbody>
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.courseName.text" /></td>
					<td><a class="myeditable CourseName" id="new_courseName" data-type="text"></a></td>
				</tr>
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.ECTS.text" /></td>
					<td><a class="myeditable" id="new_ECTS" data-type="number"></a></td>
				</tr>
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.prerequisites.text" /></td>
					<td><a class="myeditable" id="new_prerequisites" data-type="text"></a></td>
				</tr>
				
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.studyTime.text" /></td>
					<td><a class="myeditable" id="new_studyTime" data-type="number"></a></td>
				</tr>
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.reexamination.text" /></td>
					<td><a class="myeditable" id="new_reexamination" data-type="text"></a></td>
				</tr>
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.language.text" /></td>
					<td><a class="myeditable" id="new_language" data-type="text"></a></td>
				</tr>
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.results.text" /></td>
					<td><a class="myeditable" id="new_results" data-type="text"></a></td>
				</tr>
				<tr>
					<td style="width: 200px"><spring:message code="addCourse.grading.text" /></td>
					<td><a class="myeditable " id="new_grading" data-type="text"></a></td>
				</tr>
				<tr id="addCoursecomponentDiv"></tr>
				</tbody>
			</table>
		<button type="button" class="btn btn-primary" id="save_btn_course" data-loading-text="Loading...">
					<span class="glyphicon glyphicon-chevron-down"></span>&nbsp;Submit
		</button>	
		</div>
	</div>

	
<script type="text/javascript">
$(function(){
	 $('#new_courseName').editable({
	        title: 'New Course Name',
	        placeholder: "Course Name",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });
	 
	 $('#new_ECTS').editable({
	        title: 'ECTS Score',
	        placeholder: "ECTS Score",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });
	 $('#new_prerequisites').editable({
	        title: 'Prerequisites',
	        placeholder: "Prerequisites",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });
	 
	 $('#new_studyTime').editable({
	        title: 'Study Time',
	        placeholder: "Study Time",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });
	 
	 $('#new_reexamination').editable({
	        title: 'Reexamination Possible',
	        placeholder: "Reexamination Possible",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });
	 
	 $('#new_language').editable({
	        title: 'Language',
	        placeholder: "Language",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });
	 
	 $('#new_results').editable({
	        title: 'Results',
	        placeholder: "Results",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });
	 
	 $('#new_grading').editable({
	        title: 'Grading',
	        placeholder: "Grading",
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	    });  
	 
	 $('#myBtnBackCourse').click(function() {
			var btn = $(this);
		    btn.button('loading');
			$('#mainBody5').load("/calzone/coursesdashboard",
				function() {
				btn.button('reset');
			});
	});
});

function courseEditable() {
	$('.myeditableCourse').editable({
		 title: 'Course component',
	        validate: function(v) {
	        	if(!v) return "Cannot be empty";
	        }
	})
	}; 
	
var ctr = 1;
$('#myBtnAddComponent').click(function() {
	var newHtml =" <tr><td><spring:message code='addCourse.courseComponentType.text' /></td><td><a href=\"#\" class=\"myeditableCourse\" id=\"new_courseComponent";
	newHtml = newHtml + ctr;
	newHtml = newHtml + "\" data-type=\"select\" data-title=\"Select Course\" >Courses</a></td>	"
	newHtml = newHtml + " <tr id=\"addCoursecomponentDiv\"></tr>";
	//semester
	newHtml = newHtml + " <tr><td><spring:message code='addCourse.semester.text' /></td> <td><a class=\"myeditableCourse\" id=\"new_semester"
	newHtml = newHtml + ctr;
	newHtml = newHtml + " data-type=\"text\"></a></td>";
	//contact hours
	newHtml = newHtml + " <tr><td><spring:message code='addCourse.contactHours.text' /></td> <td><a class=\"myeditableCourse\" id=\"new_contactHours"
	newHtml = newHtml + ctr;
	newHtml = newHtml + " data-type=\"number\"></a></td>";
	//start date
	newHtml = newHtml + " <tr><td><spring:message code='addCourse.startDate.text' /></td> <td><a class=\"myeditableCourse\" id=\"new_startDate"
	newHtml = newHtml + ctr;
	newHtml = newHtml + " data-type=\"text\"></a></td>";
	//end date
	newHtml = newHtml + " <tr><td><spring:message code='addCourse.endDate.text' /></td> <td><a class=\"myeditableCourse\" id=\"new_endDate"
	newHtml = newHtml + ctr;
	newHtml = newHtml + " data-type=\"text\"></a></td>";
	//duration
	newHtml = newHtml + " <tr><td><spring:message code='addCourse.duration.text' /></td> <td><a class=\"myeditableCourse\" id=\"new_duration"
	newHtml = newHtml + ctr;
	newHtml = newHtml + " data-type=\"number\"></a></td>";
	//capacity
	newHtml = newHtml + " <tr><td><spring:message code='addCourse.roomCapacity.text' /></td> <td><a class=\"myeditableCourse\" id=\"new_roomCapacity"
	newHtml = newHtml + ctr;
	newHtml = newHtml + " data-type=\"number\"></a></td>";
	//requirements
	newHtml = newHtml + " <tr><td><spring:message code='addCourse.roomRequirements.text' /></td> <td><a class=\"myeditableCourse\" id=\"new_roomRequirements"
	newHtml = newHtml + ctr;
	newHtml = newHtml + " data-type=\"text\"></a></td>";
	console.log("Replace with: " + newHtml);
	$('#addCoursecomponentDiv').replaceWith(newHtml);
	ctr++;
	courseEditable();
});

</script> 
</body>
</html>