<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list">
						<div class="basic-tb-hd" id="showSearchReservation">
						<p>
							<div class="bsc-tbl">
							<form id="editForm" action="/manager/${managerInfo.id}"method="post">
								<input type="hidden" name="_method" value="put" />
								<h2>관리자 수정</h2>
								<table class="table table-sc-ex">
									<tr>
										<td>아이디</td>
										<td>${managerInfo.id}<input type="hidden" name="id" value="${managerInfo.id}" /></td>
									</tr>
									<tr>
										<td>비밀번호</td>
										<td><input type="password" id="password" name="password" value="${managerInfo.password}" maxlength="10"/></td>
									</tr>
									<tr>
										<td>이름</td>
										<td><input type="text" id="name" name="name" value="${managerInfo.name}" maxlength="10"/></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" id="extensionNumber" name="extensionNumber" value="${managerInfo.extensionNumber}" maxlength="8"/></td>
									</tr>
								</table>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div class="form-example-int mg-t-15" style="text-align: right;">
			<button type="button" id="btn_edit" class="btn btn-success notika-btn-success">수정</button>
			<button type="button" id="btn_delete" class="btn btn-success notika-btn-success">삭제</button>
		<a href="/manager">
			<button type="button" id="excel" class="btn btn-success notika-btn-success">목록</button>
		</a>
		</div>
	</div>
</div>


	<script>
		function trim(stringToTrim) {
			return stringToTrim.replace(/^\s+|\s+$/g, '');
		}
			$(document).ready(function() {
				$("#btn_edit").click(function() {
					$('input[name=_method]').val('put');
					var editConfirm = window.confirm("정말로 수정 하시겠습니까?");
					
					if (editConfirm) {
						if (trim($("#password").val()) == '') {
							window.alert("비밀번호를 입력하세요");
							return false;
						}
						
						if (password.value.indexOf(' ') >= 0) {
							window.alert("비밀번호에는 공백을 입력할 수 없습니다");
							return false;
						}
						
						if (trim($("#name").val()) == '') {
							window.alert("이름을 입력하세요");
							return false;
						}
						
						if (trim($("#extensionNumber").val()) == '') {
							window.alert("내선 번호를 입력하세요");
							return false;
						}
						
						if (isNaN(extensionNumber.value)) {
							window.alert("내선 번호는 숫자만 입력 가능합니다.");
							return false;
						}
						
						if (extensionNumber.value.indexOf(' ') >= 0) {
							window.alert("내선 번호에는 공백을 입력할 수 없습니다");
							return false;
						}
						
						$("#editForm").submit();
					}
				});
		
				$("#btn_delete").click(function() {
					$('input[name=_method]').val('delete');
					var del_confirm = confirm('정말로 삭제 하시겠습니까?');
		
					if (del_confirm) {
						$("#editForm").submit();
					}
					
				});
			});
	</script>
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</html>