<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/common/top.jsp"%>

<form action="/reservation" method="post" name="addForm">
	<div class="form-example-area">
        <div class="container">
			<div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-example-wrap">
                        <div class="cmp-tb-hd cmp-int-hd">
                            <h2>예약 등록</h2>
                        </div>
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">호실</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <select class="selectpicker" name="labNo">                                    
												<c:forEach items="${labs}" var="lab">
													<c:if test="${lab.state eq 'A'}">
													<option value="${lab.no}">${lab.no}호</option>
													</c:if>
												</c:forEach>
											</select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">시작일시</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <div class="bootstrap-select fm-cmp-mg" style="width: 500px;">
												<input type="text" id="startcalender" name="startcalender" readonly="readonly">
												<select name="startTime" id="startTime" class="selectpicker">
													<option value="00">00</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
													<option value="07">07</option>
													<option value="08">08</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
												</select>시
												&nbsp;&nbsp;&nbsp;
												<select name="startMinute" id="startMinute" class="selectpicker" >
													<option value="00">00</option>
													<option value="10">10</option>
													<option value="20">20</option>
													<option value="30">30</option>
													<option value="40">40</option>
													<option value="50">50</option>
												</select>분
											</div>
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">종료 일시</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                        	<div class="bootstrap-select fm-cmp-mg" style="width:500px;">
                                            <input type="text" id="endcalender" name="endcalender" readonly="readonly"/>
                                            <select name="endTime" id="endTime" class="selectpicker">
												<option value="00">00</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
											</select>시
											&nbsp;&nbsp;&nbsp; 
											<select name="endMinute" id="endMinute" class="selectpicker">
												<option value="00">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
											</select>분</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">비고</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                           <div class="row">
				                          	  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				                               	 <div class="form-group">
				                                    <div class="nk-int-st">
				                                        <textarea name="note" class="form-control" rows="5" placeholder="비고 내용을 적어주세요" maxlength="1000"></textarea>
				                                    </div>
				                                </div>
				                             </div>
				                        	</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">서약서</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
		                                    <select name="pledge">
												<option value="A">작성</option>
												<option value="C">미작성</option>
											</select>
	                                     </div>
                                    </div>
                                </div>
                            </div>
                        </div>               
                    </div>
                </div>    	        
           </div>
		   <div class="form-example-int mg-t-15" style="text-align: right;">
		   		${msg}
      			<input type="submit"class="btn btn-success notika-btn-success waves-effect" value="등록">
				<a href="/reservation"><input type="button" class="btn btn-success notika-btn-success waves-effect" value="목록"></a>
		   </div>
		</div>
	</div>
</form>

<script>

$(function() {
	$("#startcalender").datepicker({
		dateFormat : "yy-mm-dd",
		showOn : "both",
		buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
		minDate : 0
	});
});

$(function() {
	$("#endcalender").datepicker({
		dateFormat : "yy-mm-dd",
		showOn : "both",
		buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
		minDate : 0
	});
});

$("form").submit(function() {
	var startCalender = document.getElementById("startcalender").value;
	var startTime = document.getElementById("startTime").value;
	var startMinute = document.getElementById("startMinute").value;
	var startDate = startCalender + startTime + startMinute;
	var startNumber = startDate.replace(/-/gi,"");
	var startNumber = parseInt(startNumber);
	
	var endCalender = document.getElementById("endcalender").value;
	var endTime = document.getElementById("endTime").value;
	var endMinute = document.getElementById("endMinute").value;
	var endDate = endCalender + endTime + endMinute;
	var endNumber = endDate.replace(/-/gi,"");
	var endNumber = parseInt(endNumber);
	
	var d = new Date();
	var year = d.getFullYear()+"-";
	var month = d.getMonth() + 1;
	var date = d.getDate()+"-";
	var hour = d.getHours();
	var minute = d.getMinutes();
	var today = year + month + date + hour + minute;
	var todayNumber = today.replace(/-/gi,"");
	var todayNumber = parseInt(todayNumber);
		
	var addConfirm = window.confirm("정말로 등록 하시겠습니까?");
		if (addConfirm) {
			if (startCalender == "") {
				window.alert("시작 날짜를 입력하세요");
				
				return false;
			}

			if (endCalender == "") {
				window.alert("종료 날짜를 입력하세요");
				
				return false;
			}

			if(startNumber >= endNumber){
				window.alert("시작날짜는 종료날짜보다 크거나 같을수 없습니다");
				
				return false;
			}
			
			if(todayNumber >= startNumber){
				window.alert ("시작날짜는 현재날짜 보다 느릴수 없습니다");
				
				return false;
			}

		return true;
	} else {
		return false;
	}

});
</script>	
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
