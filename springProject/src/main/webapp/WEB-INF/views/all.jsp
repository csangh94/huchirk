<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="resources/css/css.css">
<c:forEach var="dto" items="${list}" varStatus="status">
<table align="center">
<tr>
<td width="300" align="center">${status.index + 1}</td>
<td width="600" align="center"><a href="content.do?title=${dto.title}&num=${dto.num}&main=${dto.main}&id=${dto.id}">${dto.title}</a></td>
<td width="300"align="center">${dto.id}</td>
</tr>
</table>
<hr>
</c:forEach>