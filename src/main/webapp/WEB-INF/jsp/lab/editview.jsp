<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcomb-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcomb-wp">
									<div class="breadcomb-ctn">
										<h2>실습실 수정</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<form action="/lab" method="POST" name="editForm" enctype="multipart/form-data">
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list">
						<div class="basic-tb-hd" id="showSearchReservation">
							<div class="bsc-tbl">
								<input type="hidden" name="_method" value="put" />
								<input type="hidden" name="state" value='A'>
								<table class="table table-sc-ex">
									<tr>
										<td>호실</td>
										<td><input type="hidden" name="no" value='${lab.no}'>${lab.no}</td>
									</tr>
									<tr>
										<td>정원</td>
										<td><input type="text" name="acceptablePerson" size="40" id="acceptablePerson" 
										value="${lab.acceptablePerson}" maxlength="3"></td>
									</tr>
									<tr>
										<td>장비 수</td>
										<td><input type="text" name="availableEquipNo" size="40" id="availableEquipNo"
											value="${lab.availableEquipNo}" maxlength="3"></td>
									</tr>
									<tr>
										<td>용도</td>
										<td><input type="text" name="usePerpose" size="40" id="usePerpose" value="${lab.usePerpose}" maxlength="130"></td>
									</tr>
									<tr>
										<td>컴퓨터 사양</td>
										<td><input type="text" name="computerSpec" size="40" id="computerSpec" value="${lab.computerSpec}" maxlength="130"></td>
									</tr>
									<tr>
										<td>기존 사진</td>
										<td><c:if test="${lab.photoNo ne null}">
											<img src="${pageContext.request.contextPath}/photo/image/${lab.no}" width="400" height="400" alt=""
											style="border: 2px solid grey; border-radius: 7px; -moz-border-radius: 7px; -khtml-border-radius: 7px; -webkit-border-radius: 7px;">
										</c:if>
										<br><br>
										<input type="file" value="파일 선택" id="multipartFile" name="multipartFile" accept=".gif, .jpg, .png, jpeg">
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
					<div class="form-example-int mg-t-15" style="text-align: right;">
						<button class="btn btn-success notika-btn-success waves-effect" id="submit">수정</button>
						<button type="button" class="btn btn-success notika-btn-success waves-effect" onclick="location.href='/lab'"> 목록  </button>
					</div>
		</div>
	</div>
</form>
	<script>
	$(document).ready(function() {
		function trim(stringToTrim) {
			return stringToTrim.replace(/^\s+|\s+$/g, '');
		}

		$("form").submit(function(){
			var acceptablePerson = document.editForm.acceptablePerson;
			var availableEquipNo = document.editForm.availableEquipNo;
			var usePerpose = document.editForm.usePerpose;
			var computerSpec = document.editForm.computerSpec;
			var fileNm = $("#multipartFile").val();

			var editForm = window.confirm("정말로 수정 하시겠습니까?");
			if (editForm) {
				if (trim(acceptablePerson.value) == '') {
					window.alert("정원 정보를 입력하세요");
					document.getElementById('acceptablePerson').focus();
					return false;
				}
				if (acceptablePerson.value.indexOf(' ') >= 0) {
					window.alert("정원 정보에 공백을 입력할수 없습니다");
					document.getElementById('acceptablePerson').focus();
					return false;
				}
				if (isNaN(acceptablePerson.value)) {
					window.alert("정원 정보는 숫자만 입력 가능합니다");
					document.getElementById('acceptablePerson').focus();
					return false;
				}
				if (availableEquipNo.value == '') {
					window.alert("장비 수를 입력하세요");
					document.getElementById('availableEquipNo').focus();
					return false;
				}
				if (availableEquipNo.value.indexOf(' ') >= 0) {
					window.alert("장비 수에 공백을 입력할수 없습니다");
					document.getElementById('availableEquipNo').focus();
					return false;
				}
				if (isNaN(availableEquipNo.value)) {
					window.alert("장비 수는 숫자만 입력 가능합니다");
					document.getElementById('availableEquipNo').focus();
					return false;
				}
				if (trim(usePerpose.value) == '') {
					window.alert("사용 용도를 다시 입력하세요");
					document.getElementById('usePerpose').focus();
					return false;
				}
				if (trim(computerSpec.value) == '') {
					window.alert("컴퓨터 사양을 다시 입력하세요");
					document.getElementById('computerSpec').focus();
					return false;
				}if (fileNm != "") {
				    var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();
				    if (!(ext == "gif" || ext == "jpg" || ext == "png")) {
				        alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
				        return false;
				    }
				}
				return true;
			} else {
				return false;
			}
		});
	});
	</script>
	<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>