<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/common/top.jsp" %>
	<table border ='1'>
		<tr>
			<td>예약번호</td>
			<td>등록 일시</td>
			<td>관리자</td>
			<td>예약내용</td>
			<td>상태</td>
		</tr>
		<c:choose>
			<c:when test="${not empty notices}">
				<c:forEach items="${notices}" var="notice">
					<tr>
						<td>${notice.reservationNo}</td>
						<td>${notice.registrationDate}</td>
						<td>${notice.name}</td>
						<td>${notice.startDate} 부터 ${notice.expiryDate} 까지 ${notice.labNo}호 실습실</td>
						<c:set var="state" value="${notice.reservationState}"/>
						<c:choose>
							<c:when test="${state eq 'A' }"><td>등록</td></c:when>
							<c:otherwise><td>취소</td></c:otherwise>	
						</c:choose>
					</tr>
		</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="5"><h2>등록된 알림이 없습니다</h2></td>
			</tr>
		</c:otherwise>
		</c:choose>
	</table>
		<a href="/reservation"><input type="button" value="목록"></a>
</body>
</html>