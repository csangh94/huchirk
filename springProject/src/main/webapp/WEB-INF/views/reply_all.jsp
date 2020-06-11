<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="resources/css/css.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function() {
	$(".b1").click(function() {
		rnum = $(this).attr("id")
		rid = $("#reply"+rnum).val()
		$.ajax({
			url:"reply_delete.do",
			data:{
				id : '${dto.id}',
				title : '${dto.title}',
				num : '${dto.num}',
				main : "${dto.main}",
				r_num : rnum,
				reply_id : rid
			},
			success : function(result){
				location.href="content.do?title=${dto.title}&num=${dto.num}&main=${dto.main}"
			}
		})
		
	}) 
}) 
</script>
<c:forEach var="dto" items="${list}" varStatus="status">
<table align="center">
<tr>
<td >${status.index + 1}></td>
<td width="300" ><input type="hidden" id="reply${dto.r_num}" value="${dto.reply_id}">${dto.reply_id}</td>
<td width="600" >${dto.textarea}</td>
<td width="200" ><button class='b1' id="${dto.r_num}">삭제</button></td>
</tr>
</table>
<hr>
</c:forEach>
