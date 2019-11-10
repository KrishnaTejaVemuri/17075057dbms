<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>

<head>
<jsp:include page="../head.jsp" />
</head>


<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


<div class="site-wrap" id="home-section">

<jsp:include page="../header.jsp" />


<div class="ftco-blocks-cover-1">

  <div class="site-section-cover overlay">
    <div class="container">
      <div class="row mt-5">


        <div class="row">
            <div class="col-lg-12 ml-5" >
<spring:url value="/Cashssa/save" var="savingpath" />
 <form:form modelAttribute="Ssaobj" method="post" action="${savingpath }" >
  <form:hidden path="sgid"/>
  <div align=center>
 <fieldset>
  <table>
   <tr>
    <td>Release month: </td>
    <td>
     <form:input path="Month"/>
    </td>
   </tr>
   <tr>
    <td>Maintenance Grant: </td>
    <td>
     <form:input path="Maintainancegrant"/>
    </td>
   </tr>
   
   <tr>
    <td>School Grant: </td>
    <td>
     <form:input path="Schoolgrant"/>
    </td>
   </tr>
   
   <tr>
    <td></td>
    <td>
     <button type="submit">Save</button>
    </td>
   </tr>
  </table>
  
  </fieldset>
  </div>
 </form:form>
</div>
</div>


</div>
</div>
</div>
</div>

</div>

<jsp:include page="../footer.jsp" />

</body>

</html>