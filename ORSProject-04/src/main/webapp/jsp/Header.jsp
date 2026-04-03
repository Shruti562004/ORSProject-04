<%@page import="in.co.rays.proj4.controller.ORSView"%>
<%@page import="in.co.rays.proj4.bean.RoleBean"%>
<%@page import="in.co.rays.proj4.controller.LoginCtl"%>
<%@page import="in.co.rays.proj4.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- Include jQuery UI -->
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
<!-- Include jQuery UI CSS -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="/ORSProject-04/js/checkbox.js"></script>
<script src="/ORSProject-04/js/datepicker.js"></script>
</head>
<body>
<!-- Logo -->
	<img src="<%=request.getContextPath()%>/img/customLogo.jpg"
		align="right" width="100" height="40" border="0">

	<%
		UserBean user = (UserBean) session.getAttribute("user");
	%>
	<%
		if (user != null) {
	%>
	<h3>
		Hi,
		<%=user.getFirstName()%>
		(<%=session.getAttribute("role")%>)
	</h3>

	<%
		if (user.getRoleId() == RoleBean.ADMIN) {
	%>
	<a href="<%=ORSView.MY_PROFILE_CTL%>"><b>My Profile</b></a>
	<b>|</b>
	<a href="<%=ORSView.CHANGE_PASSWORD_CTL%>"><b>Change Password</b></a>
	<b>|</b>
	<a href="<%=ORSView.GET_MARKSHEET_CTL%>"><b>Get Marksheet</b></a>
	<b>|</b>
	<a href="<%=ORSView.MARKSHEET_MERIT_LIST_CTL%>"><b>Marksheet
			Merit List</b></a>
	<b>|</b>
	<a href="<%=ORSView.USER_CTL%>"><b>Add User</b></a>
	<b>|</b>
	<a href="<%=ORSView.USER_LIST_CTL%>"><b>User List</b></a>
	<b>|</b>
	<a href="<%=ORSView.ROLE_CTL%>"><b>Add Role</b></a>
	<b>|</b>
	<a href="<%=ORSView.ROLE_LIST_CTL%>"><b>Role List</b></a>
	<b>|</b>
	<a href="<%=ORSView.COLLEGE_CTL%>"><b>Add College</b></a>
	<b>|</b>
	<a href="<%=ORSView.COLLEGE_LIST_CTL%>"><b>College List</b></a>
	<b>|</b>
	<a href="<%=ORSView.STUDENT_CTL%>"><b>Add Student</b></a>
	<b>|</b>
	<a href="<%=ORSView.STUDENT_LIST_CTL%>"><b>Student List</b></a>
	<b>|</b>
	<a href="<%=ORSView.MARKSHEET_CTL%>"><b>Add Marksheet</b></a>
	<b>|</b>
	<a href="<%=ORSView.MARKSHEET_LIST_CTL%>"><b>Marksheet List</b></a>
	<b>|</b>
	<a href="<%=ORSView.COURSE_CTL%>"><b>Add Course</b></a>
	<b>|</b>
	<a href="<%=ORSView.COURSE_LIST_CTL%>"><b>Course List</b></a>
	<b>|</b>
	<a href="<%=ORSView.SUBJECT_CTL%>"><b>Add Subject</b></a>
	<b>|</b>
	<a href="<%=ORSView.SUBJECT_LIST_CTL%>"><b>Subject List</b></a>
	<b>|</b>
	<a href="<%=ORSView.TIMETABLE_CTL%>"><b>Add Timetable</b></a>
	<b>|</b>
	<a href="<%=ORSView.TIMETABLE_LIST_CTL%>"><b>Timetable List</b></a>
	<b>|</b>
	<a href="<%=ORSView.FACULTY_CTL%>"><b>Add Faculty</b></a>
	<b>|</b>
	<a href="<%=ORSView.FACULTY_LIST_CTL%>"><b>Faculty List</b></a>
	<b>|</b>
	
	
	<!-- USE CASE -->
	<a href="<%=ORSView.GYMWORKOUT_CTL%>"><b>Add Gymworkout</b></a> |
	<a href="<%=ORSView.GYMWORKOUT_LIST_CTL%>"><b>Gymworkout List</b></a> |
	
		<a href="<%=ORSView.BROADCAST_CTL%>"><b>Add Broadcast</b></a> |
	<a href="<%=ORSView.BROADCAST_LIST_CTL%>"><b>Broadcast List</b></a> |
	
		

				<a href="<%=ORSView.ART_CTL%>"><b>Add Art</b></a> |
	<a href="<%=ORSView.ART_LIST_CTL%>"><b>Art List</b></a> |
	
	
				<a href="<%=ORSView.NOTIFICATION_CTL%>"><b>Add Notification</b></a> |
	<a href="<%=ORSView.NOTIFICATION__LIST_CTL%>"><b>Notification List</b></a> |
	
		
		<a href="<%=ORSView.PAYMENT_CTL%>"><b>Add Payment</b></a>
	<b>|</b>
	<a href="<%=ORSView.PAYMENT_LIST_CTL%>"><b> Payment List </b></a>
	<b>|</b>
<a href="<%=ORSView.INTERNET_CTL%>"><b>Add Internet</b></a>
	<b>|</b>
	<a href="<%=ORSView.INTERNET_LIST_CTL%>"><b> Internet List </b></a>
	<b>|</b>
<a href="<%=ORSView.LAB_CTL%>"><b>Add Lab</b></a>
	<b>|</b>
	<a href="<%=ORSView.LAB_LIST_CTL%>"><b> Lab List </b></a>
	<b>|</b>
		
	<a href="<%=ORSView.PRESCRIPTION_CTL%>"><b>Add Prescription</b></a>
	<b>|</b>
	<a href="<%=ORSView.PRESCRIPTION_LIST_CTL%>"><b> Prescription List </b></a>
	<b>|</b>
		
	
	
		<a href="<%=ORSView.EMI_CTL%>"><b>Add Emi</b></a>
	<b>|</b>
	<a href="<%=ORSView.EMI_LIST_CTL%>"><b> Emi List </b></a>
	<b>|</b>
	<a href="<%=ORSView.TRACKING_CTL%>"><b>Add Tracking</b></a>
	<b>|</b>
	<a href="<%=ORSView.TRACKING_LIST_CTL%>"><b> Tracking List </b></a>
	<b>|</b>
	<a href="<%=ORSView.BUDGET_CTL%>"><b>Add Budget</b></a>
	<b>|</b>
	<a href="<%=ORSView.BUDGET_LIST_CTL%>"><b> Budget List </b></a>|
	<a href="<%=ORSView.JAVA_DOC%>" target="blank"><b>Java Doc</b></a>
	<b>|</b>
	<a href="<%=ORSView.LOGIN_CTL + "?operation=Logout"%>"><b>Logout</b></a>
	<b>|</b>
	
	<%
		} else if (user.getRoleId() == RoleBean.STUDENT) {
	%>
	<a href="<%=ORSView.STUDENT_CTL%>"><b>Add Student</b></a>
	<b>|</b>
	<a href="<%=ORSView.STUDENT_LIST_CTL%>"><b>Student List</b></a>
	<b>|</b>
	<a href="<%=ORSView.MARKSHEET_CTL%>"><b>Add Marksheet</b></a>
	<b>|</b>
	<a href="<%=ORSView.MARKSHEET_LIST_CTL%>"><b>Marksheet List</b></a>
	<b>|</b>
	<a href="<%=ORSView.TIMETABLE_LIST_CTL%>"><b>Timetable List</b></a>
	<b>|</b>
	<a href="<%=ORSView.COURSE_LIST_CTL%>"><b>Course List</b></a>
	<b>|</b>
	<a href="<%=ORSView.LOGIN_CTL + "?operation=" + LoginCtl.OP_LOG_OUT%>"><b>Logout</b></a>

	<%
		}
	%>
	<%
		} else {
	%>

	<h3>Hi, Guest</h3>
	<a href="<%=ORSView.WELCOME_CTL%>"><b>Welcome</b></a> |
	<a href="<%=ORSView.LOGIN_CTL%>"><b>Login</b></a>
	<%
		}
	%>

	<hr>
<%@ include file="Footer.jsp"%>
</body>
</html>