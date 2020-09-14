<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="breadcomb-area">

		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list">
						<div class="basic-tb-hd" id="showSearchReservation">
							<p>
							<div class="bsc-tbl">
							<h2>관리자 목록</h2>
								<table class="table table-sc-ex">
							 <thead>
                                   <tr>
                                       <th>번호</th>
                                       <th>이름</th>
                                       <th>아이디</th>
                                       <th>연락처</th>
                                   </tr>
                               </thead>
									<tbody>
										<c:if test="${not empty managers}">
											<c:forEach items="${managers}" var="manager">
												<tr>
													<td>${manager.rownum}</td>
													<td><a href="/manager/${manager.id}/form">${manager.name}</a></td>
													<td>${manager.id}</td>
													<td>${manager.extensionNumber}</td>
												<tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
							</p>
						</div>
					</div>
					<div style="text-align:right">
					<a href="/manager/form"><button id="add" class="btn btn-success notika-btn-success">등록</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</html>