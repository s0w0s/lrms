<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/common/top.jsp" %>
	
<div class="normal-table-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="normal-table-list mg-t-30">
					<div class="basic-tb-hd">
						<h2>예약조회</h2>
					</div>
					<div class="bsc-tbl-bdr">
						<table class="table table-bordered">                           
							<tbody>
								<tr>
									<td width="200">호실</td>
									<td>${reservation.labNo}호</td>
								</tr>
								<tr>
									<td>예약일자</td>
									<td><span>${reservation.startDate} 부터 ${reservation.expiryDate} 까지</span></td>
								</tr>
								<tr>
									<td>상태</td>
									<td>
										<c:choose>
											<c:when test="${reservation.state eq 'A' }">예약</c:when>
											<c:otherwise>취소</c:otherwise>	
										</c:choose>
									</td>    
								</tr>
								<tr>
									<td>등록일시</td>
									<td>${reservation.registrationDate}</td>
								</tr>
								<tr>                         
									<c:set var="pledge" value="${reservation.pledge}"/>
									<td>서약서 작성</td>
									<td>
										<c:choose>
											<c:when test="${pledge eq 'A'}">작성</c:when>
											<c:otherwise>미작성</c:otherwise>
										</c:choose>           	                         
									</td>
								</tr>
								<tr>							
									<td>비고</td>
									<td>${reservation.note}</td>
								</tr>
								<tr>
									<td>관리자명</td>
									<td>${reservation.name}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="form-example-int mg-t-15" style="text-align: right;">
			<form action="/reservation" method="post">
			<input type="hidden" name="_method" value="delete" />
				<input type="hidden"  name="no" value="${reservation.no}">
				<c:if test="${reservation.state eq 'A'}">
					<a href="/reservation/${reservation.no}/form"><input type="button" value="수정" class="btn btn-success notika-btn-success waves-effect"></a>
				</c:if>
				<c:if test="${reservation.state eq 'A'}">
					<input type="submit" value="삭제" class="btn btn-success notika-btn-success waves-effect">
				</c:if>
				<a href="/reservation"><input type="button" value="목록" class="btn btn-success notika-btn-success waves-effect"></a>
			</form>
		</div>
	</div>
</div>
            		
<script>
		$("form").submit(function(){
			var deleteConfirm = confirm('삭제하시겠습니까?');
			if(deleteConfirm){
				alert('삭제됩니다')
				return true;
			} else{
				alert('취소 되었습니다')
				return false;
			}	
			
		});
		
</script>
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
