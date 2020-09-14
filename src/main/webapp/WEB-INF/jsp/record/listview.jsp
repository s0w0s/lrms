<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/common/top.jsp" %>

<div class="container">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="breadcomb-list">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="breadcomb-wp">
							<div class="breadcomb-icon">
								<i class="notika-icon notika-bar-chart"></i>
							</div>
							<div class="breadcomb-ctn">					
								<h2>예약 이력</h2>
								<p>장소와 상태를 선택해 이력을 조회할 수 있습니다.</p>
								<form id="searchRecord">
									<table class="table table-sc-ex">
										<tr>
											<td>
												<div class="bootstrap-select fm-cmp-mg" style="width:600px;">
												<select name="labNo" class="selectpicker">
													<c:forEach items="${labs}" var="lab">
														<option value="${lab.no}">${lab.no}호</option>
													</c:forEach>
				 								</select>
												<select name="state" class="selectpicker">
													<option value="all">전체</option>
													<option value="A">예약</option>
													<option value="C">취소</option>						
												</select>
													<input type="button" id="search" value="검색" class="btn btn-success notika-btn-success"> 												
												</div>
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
						<div class="breadcomb-report">
							<button id="excel" class="btn btn-success notika-btn-success">예약파일다운로드</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<div class="container">
	<div class="row">			 
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="normal-table-list">
				<div class="basic-tb-hd">
					<h2>예약이력현황</h2>
					<div id="showSearchRecord"></div>
				</div>
			</div>
		</div>
	</div>
</div>
		                            
    
<script>
	$('#search').on('click', function(){
      	
        $.ajax({
            url: "record",
            type: "POST",
            data: $('#searchRecord').serialize(),
            success: function(data){
            	
            	html = '<div class="bsc-tbl">';
				html += '	<table class="table table-sc-ex" id="recordTable">';
				html += '	 <thead>';
				html += '	 	<tr>';
            	html +='			<th>예약번호</th>';
            	html +='			<th>실습실</th>';
            	html +='			<th>예약 시작 시간</th>';
            	html +='			<th>예약 종료 시간</th>';
            	html +='			<th>관리자</th>';
            	html +='			<th>상태</th>';
            	html +='			<th>등록시간</th>';
            	html +='		</tr>';
            	html += '	</thead>';
            	html += '<tbody>';
            	
            	for(var i = 0; i < data.length; i++){
					html += '<tr>';
            		html +='	<td>' + data[i].no + '</td>';
            		html +='	<td>' + data[i].labNo + '</td>';
            		html +='	<td>' + data[i].startDate + '</td>';
            		html +='	<td>' + data[i].expiryDate + '</td>';
            		html +='	<td>' + data[i].managerId + '</td>';
            			if(data[i].state == 'A'){
            				html +='	<td>등록</td>';
            			} else{
            				html +='	<td>취소</td>';
            			}
            			html +='	<td>' + data[i].registrationDate + '</td>';
            			html +='</tr>';
            		
            	}
            	html +='		</tbody>'
            	html +='	</table>';  
            	html +='</div>';
            	   
                $('#showSearchRecord').html(html);
            
                
            },
            error: function(){
                alert("에러");
            }
        });
    });
	
	$("#excel").click(function () {
        $("#recordTable").table2excel({
            name: "excelFile",
            filename: "예약이력파일",
            fileext: ".xls"
        });
    });
	
</script>
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>