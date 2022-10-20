<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/><br/>
	<jsp:useBean id="beanDao" class="infinite.LibraryWithHib.LibraryDAO"/>
	<c:set var="user" value="${sessionScope.user}"/>
	<br/> Select books to issue: <br/> 
	
	<table border='3'>
		<tr>
		 <th>TID</th>
		 <th>Book Id </th>
		 <th>Name</th>
		 <th>From Date</th>
	    </tr>
	  <c:forEach var="trans" items="${beanDao.issueBooks(user)}">
	  	<tr>
	  		<td><c:out value="${trans.tid }"></c:out></td>
	  		<td><c:out value="${trans.bookId}"/> </td>
	  		<td><c:out value="${trans.userName}"/> </td>
	  		<td><c:out value="${trans.fromDate}"/> </td>
	  	</tr>
	  </c:forEach>
	  </table>
</body>
</html>