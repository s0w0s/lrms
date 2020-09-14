<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="breadcomb-list">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="breadcomb-wp">
								<div class="breadcomb-ctn">
									<h2>실습실 등록</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<form action="/lab" method="POST" name="addForm" enctype="multipart/form-data">
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list">
						<div class="basic-tb-hd" id="showSearchReservation">
							<div class="bsc-tbl">
								<input type="hidden" name="state" value='A'>
								<table class="table table-sc-ex">
									<tr>
										<td>호실</td>
										<td>
											<input type="text" name="no" id="no" size="40" maxlength="3" /> 
											<input	type="button" id="search" value="중복검사" class="btn-sx btn-success notika-btn-success"/>
											<div id="checkLab"> </div> 
											<input type="hidden" id="checkOverlap" name="checkOverlap" value='disabled'>
										</td>
									</tr>
									<tr>
										<td>정원</td>
										<td><input type="text" name="acceptablePerson" id="acceptablePerson" size="40" maxlength="3" /></td>
									</tr>
									<tr>
										<td>장비 수</td>
										<td><input type="text" name="availableEquipNo" id="availableEquipNo" size="40" maxlength="3" /></td>
									</tr>
									<tr>
										<td>용도</td>
										<td><input type="text" name="usePerpose" id="usePerpose" size="40" maxlength="130"/></td>
									</tr>
									<tr>
										<td>컴퓨터 사양</td>
										<td><input type="text" name="computerSpec" id="computerSpec" size="40" maxlength="130"/></td>
									</tr>
									<tr>
										<td>사진</td>
										<td><input type="file" value="사진 선택" name="multipartFile" id="multipartFile" accept=".gif, .jpg, .png, jpeg" /></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="form-example-int mg-t-15" style="text-align: right;">
				<button class="btn btn-success notika-btn-success waves-effect" id="submit"> 등록  </button>
				<button type="button" class="btn btn-success notika-btn-success waves-effect" onclick="location.href='/lab'"> 목록 </button>  
			</div>
		</div>
	</div>
</form> 
<script>
$(document).ready(function() {
	$('#search').on('click',function() {
		var query = {
			no : $("#no").val()
		};

		$.ajax({
			url : "/lab/check",
			type : "POST",
			data : query,
			success : function(data) {
				if (data == 1) {
				     $('#checkLab').text("사용 불가능한 실습실 번호입니다");

				} else {
					$('#checkLab').text("사용 가능한 실습실 번호입니다");
					document.getElementById("checkOverlap").value = 'available';
				}
			}
		});
	});
	
	$("#no").change(function(){
		document.getElementById("checkOverlap").value = 'disabled';
	});
	
	function trim(stringToTrim) {
		return stringToTrim.replace(/^\s+|\s+$/g, '');
	}
	
	$("form").submit(function(){
		var checkOverlap = document.addForm.checkOverlap;
		var no = document.addForm.no;
		var acceptablePerson = document.addForm.acceptablePerson;
		var availableEquipNo = document.addForm.availableEquipNo;
		var usePerpose = document.addForm.usePerpose;
		var computerSpec = document.addForm.computerSpec;
		var fileNm = $("#multipartFile").val();
		
		var addForm = window.confirm("정말로 등록 하시겠습니까?");
		if (addForm) {
			if (checkOverlap.value == 'disabled') {
				window.alert("중복체크를 확인해주세요");
				document.getElementById('no').focus();
				return false;
			}
			if (trim(no.value) == '') {
				window.alert("호실 정보를 입력하세요");
				document.getElementById('no').focus();
				return false;
			}
			if (no.value.indexOf(' ') >= 0) {
				window.alert("호실 정보에 공백을 입력할수 없습니다");
				document.getElementById('no').focus();
				return false;
			}
			if (isNaN(no.value)) {
				window.alert("호실 정보는 숫자만 입력 가능합니다");
				document.getElementById('no').focus();
				return false;
			}
			if (trim(acceptablePerson.value) == '') {
				window.alert("정원 정보를  입력하세요");
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
			if (trim(availableEquipNo.value) == '') {
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
				window.alert("사용 용도를 입력하세요");
				document.getElementById('usePerpose').focus();
				return false;
			}
			if (trim(computerSpec.value) == '') {
				window.alert("컴퓨터 사양을 입력하세요");
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