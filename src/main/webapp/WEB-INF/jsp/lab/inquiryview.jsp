<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
<form action='/lab/${lab.no}' method="post" name="inquiryForm">
	<input type="hidden" name="_method" value="delete" />
	<div class="normal-table-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list mg-t-30">
						<div class="basic-tb-hd"> <h1>실습실 조회</h1> </div>
						<div class="bsc-tbl-bdr">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td width="300">호실</td>
										<td>${lab.no}</td>
									</tr>
									<tr>
										<td width="300">수용 가능 인원</td>
										<td>${lab.acceptablePerson}</td>
									</tr>
									<tr>
										<td width="300">사용 가능 장비 수</td>
										<td>${lab.availableEquipNo}</td>
									</tr>
									<tr>
										<td width="300">주 용도</td>
										<td>${lab.usePerpose}</td>
									</tr>
									<tr>
										<td width="300">컴퓨터 사양</td>
										<td>${lab.computerSpec}</td>
									</tr>
									<tr>
										<td width="300">실습실 사진</td>
										<td>
										<c:if test="${lab.photoNo ne null}">
											<img src="${pageContext.request.contextPath}/photo/image/${lab.no}" width="400" height="400" alt=""
											style="border: 2px solid grey; border-radius: 7px; -moz-border-radius: 7px; -khtml-border-radius: 7px; -webkit-border-radius: 7px;">
										</c:if>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="form-example-int mg-t-15" style="text-align: right;">
				<button type="button" class="btn btn-success notika-btn-success waves-effect" onclick="location.href='/lab/${lab.no}/form'"> 수정 </button>
				<button class="btn btn-success notika-btn-success waves-effect" id="submit"> 삭제 </button>
				<button type="button" class="btn btn-success notika-btn-success waves-effect" onclick="location.href='/lab'">목록</button>
			</div>
		</div>
	</div>
</form>
	<script>
		$(document).ready(function() {
			$("form").submit(function() {
				var inquiryForm = window.confirm("정말로 삭제 하시겠습니까?");
				if (inquiryForm) {
					return true;
				} else {
					return false;
				}
			});
		});
	</script>
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>