<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" session="false" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="booking" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<booking:layout title="hotel">
<jsp:attribute name="body">
    <c:if test="${empty hotels}">
        <p>There are no hotels</p>
    </c:if>
    <c:if test="${not empty hotels}">
        <ul>
       <c:forEach items="${hotels}" var="hotel">
       <li>
       <c:out value="${hotel.name}" />
       </li>
       </c:forEach>
       </ul>
    </c:if>
    <a class="btn btn-info" href="${pageContext.request.contextPath}/hotel/create">Create</a>
</jsp:attribute>
</booking:layout>