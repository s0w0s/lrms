<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
<div class="breadcomb-area">
	<div class="container">
	<form action="/manager" method="POST" name="addForm">
		<h2>관리자 등록</h2>
		<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list">
						<div class="basic-tb-hd" id="showSearchReservation">
							<p>
							<div class="bsc-tbl">
								<table class="table table-sc-ex">
									<tr>
										<td>아이디</td>
										<td><input type="text" id="id" name="id"
											onchange="change(this)" maxlength="10"
											onkeyup="spaceChecker(this);" /> <input type="button"
											value="중복검사" id="duplicationCheck"
											class="btn-xs btn-success notika-btn-success" />
											<div id="duplCheck"></div></td>
									</tr>
									<tr>
										<td>비밀번호</td>
										<td><input type="password" id="password" name="password"
											maxlength="12"></td>
									</tr>
									<tr>
										<td>이름</td>
										<td><input type="text" id="name" name="name"
											maxlength="10" /></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" id="extensionNumber"
											name="extensionNumber" maxlength="6" /></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div class="form-example-int mg-t-15" style="text-align: right;">
			<button id="submit" disabled="disabled"
				class="btn btn-success notika-btn-success">등록</button>
			<a href="/manager"><button type="button" id="excel"
					class="btn btn-success notika-btn-success">목록</button></a>
		</div>
		</form>
	</div>
</div>
<script>
	function trim(stringToTrim) {
		return stringToTrim.replace(/^\s+|\s+$/g, '');
	}
	$('#duplicationCheck').on('click', function() {

		var query = $("#id").val();

		$.ajax({
			url : "/duplicationCheck",
			type : "POST",
			data : "id=" + query,
			success : function(data) {
				if (data == false) {
					$('#duplCheck').text("사용 불가능한 아이디 입니다.");

				} else {
					$('#duplCheck').text("사용 가능한 아이디 입니다.");
					$("#submit").removeAttr("disabled");
				}
			}
		});
	});

	function change(obj) {
		$('#duplCheck').text("중복체크를 확인해주세요");
		$("#submit").attr("disabled", "disabled");
	}
	function spaceChecker(obj) {
		var a = $('#id').val().replace(/ /gi, '');
		$('#id').val(a);
	}

	$("form").submit(function() {
		var id = document.addForm.id;
		var password = document.addForm.password;
		var name = document.addForm.name;
		var extensionNumber = document.addForm.extensionNumber;

		var addConfirm = window.confirm("정말로 등록 하시겠습니까?");
		if (addConfirm) {
			if (id.value.indexOf(' ') >= 0) {
				window.alert("아이디에는 공백을 입력할수 없습니다");
				return false;
			}

			if (trim(password.value) == '') {
				window.alert("비밀번호를 입력하세요");
				return false;
			}

			if (password.value.indexOf(' ') >= 0) {
				window.alert("비밀번호에는 공백을 입력할수 없습니다");
				return false;
			}

			/* if (name.value.indexOf(' ') >= 0) {
				window.alert("이름에는 공백을 입력할수 없습니다");
				return false;
			} */
			if (trim(name.value) == '') {
				window.alert("이름을 입력하세요");
				return false;
			}

			if (trim(extensionNumber.value) == '') {
				window.alert("내선 번호를 입력하세요");
				return false;
			}

			if (isNaN(extensionNumber.value)) {
				window.alert("내선 번호는 숫자만 입력 가능합니다.");
				return false;
			}
			if (extensionNumber.value.indexOf(' ') >= 0) {
				window.alert("내선 번호에는 공백을 입력할수 없습니다");
				return false;
			}

			return true;

		} else {
			return false;
		}
	});
</script>
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>