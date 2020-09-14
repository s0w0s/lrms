<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%@ include file="/WEB-INF/jsp/common/top.jsp" %>
	<c:set var="startDate" value="${reservation.startDate}"/>
	<c:set var="endDate" value="${reservation.expiryDate}"/>
			<% 
				String startDate = (String) pageContext.getAttribute("startDate");
			    String startMonth = startDate.substring(0,10);
			    String startTime = startDate.substring(11,13);
			    String startMinute = startDate.substring(14, 16);
			    int sTime = Integer.parseInt(startTime);
			    int sMinute = Integer.parseInt(startMinute);
			    
			    String endDate = (String) pageContext.getAttribute("endDate");
			    String endMonth = endDate.substring(0,10);
			    String endTime = endDate.substring(11,13);
			    String endMinute = endDate.substring(14, 16);
			    int eTime = Integer.parseInt(endTime);
			    int eMinute = Integer.parseInt(endMinute);
			  
			%>

<form action="/reservation" method="post" name="editForm">
<input type="hidden" name="_method" value="put"/>
	<div class="form-example-area">
        <div class="container">
			<div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-example-wrap mg-t-30">
                        <div class="cmp-tb-hd cmp-int-hd">
                            <h2>예약 수정</h2>
                        </div>
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">호실</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <select name="labNo" class="selectpicker">
												<c:forEach items="${labs}" var="lab">
													<c:if test="${lab.state eq 'A'}">
													<option value="${lab.no}"<c:if test="${reservation.labNo eq lab.no}">selected="selected"</c:if>>${lab.no}호</option>
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
                                        	<div class="bootstrap-select fm-cmp-mg" style="width:500px;">
                                         	  <input type="text" id="startcalender" name="startcalender" value="<%=startMonth%>" readonly="readonly">
                                         		  <select name="startTime" id ="startTime" class="selectpicker" >
										   				<option value="00"<c:if test="<%=sTime == 0 %>">selected="selected"</c:if>>00</option>
										    			<option value="01"<c:if test="<%=sTime == 1 %>">selected="selected"</c:if>>01</option>
										    			<option value="02"<c:if test="<%=sTime == 2 %>">selected="selected"</c:if>>02</option>
										    			<option value="03"<c:if test="<%=sTime == 3 %>">selected="selected"</c:if>>03</option>
										    			<option value="04"<c:if test="<%=sTime == 4 %>">selected="selected"</c:if>>04</option>
										    			<option value="05"<c:if test="<%=sTime == 5 %>">selected="selected"</c:if>>05</option>
										    			<option value="06"<c:if test="<%=sTime == 6 %>">selected="selected"</c:if>>06</option>
										    			<option value="07"<c:if test="<%=sTime == 7 %>">selected="selected"</c:if>>07</option>
										    			<option value="08"<c:if test="<%=sTime == 8 %>">selected="selected"</c:if>>08</option>
										    			<option value="09"<c:if test="<%=sTime == 9 %>">selected="selected"</c:if>>09</option>
										    			<option value="10"<c:if test="<%=sTime == 10 %>">selected="selected"</c:if>>10</option>
										    			<option value="11"<c:if test="<%=sTime == 11 %>">selected="selected"</c:if>>11</option>
										    			<option value="12"<c:if test="<%=sTime == 12 %>">selected="selected"</c:if>>12</option>
										    			<option value="13"<c:if test="<%=sTime == 13 %>">selected="selected"</c:if>>13</option>
										    			<option value="14"<c:if test="<%=sTime == 14 %>">selected="selected"</c:if>>14</option>
										    			<option value="15"<c:if test="<%=sTime == 15 %>">selected="selected"</c:if>>15</option>
										    			<option value="16"<c:if test="<%=sTime == 16 %>">selected="selected"</c:if>>16</option>
										    			<option value="17"<c:if test="<%=sTime == 17 %>">selected="selected"</c:if>>17</option>
										    			<option value="18"<c:if test="<%=sTime == 18 %>">selected="selected"</c:if>>18</option>
										    			<option value="19"<c:if test="<%=sTime == 19 %>">selected="selected"</c:if>>19</option>
										    			<option value="20"<c:if test="<%=sTime == 20 %>">selected="selected"</c:if>>20</option>
										    			<option value="21"<c:if test="<%=sTime == 21 %>">selected="selected"</c:if>>21</option>
										    			<option value="22"<c:if test="<%=sTime == 22 %>">selected="selected"</c:if>>22</option>
										    			<option value="23"<c:if test="<%=sTime == 23 %>">selected="selected"</c:if>>23</option>
										 		 </select>시
										 		 <select name="startMinute" id = "startMinute" class="selectpicker">
											 		    <option value="00"<c:if test="<%=sMinute == 00 %>">selected="selected"</c:if>>00</option>
											 		  	<option value="10"<c:if test="<%=sMinute == 10 %>">selected="selected"</c:if>>10</option>
											 		  	<option value="20"<c:if test="<%=sMinute == 20 %>">selected="selected"</c:if>>20</option>
											  		 	<option value="30"<c:if test="<%=sMinute == 30 %>">selected="selected"</c:if>>30</option>
											 		  	<option value="40"<c:if test="<%=sMinute == 40 %>">selected="selected"</c:if>>40</option>
										    			<option value="50"<c:if test="<%=sMinute == 50 %>">selected="selected"</c:if>>50</option>
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
                                          		<input type="text" id="endcalender" name="endcalender" value="<%=endMonth%>" readonly="readonly">
                                           	    	<select name="endTime" id ="endTime" class="selectpicker"> 
											    		<option value="00"<c:if test="<%=eTime == 0 %>">selected="selected"</c:if>>00</option>
											    		<option value="01"<c:if test="<%=eTime == 1 %>">selected="selected"</c:if>>01</option>
												    	<option value="02"<c:if test="<%=eTime == 2 %>">selected="selected"</c:if>>02</option>
												    	<option value="03"<c:if test="<%=eTime == 3 %>">selected="selected"</c:if>>03</option>
												    	<option value="04"<c:if test="<%=eTime == 4 %>">selected="selected"</c:if>>04</option>
												    	<option value="05"<c:if test="<%=eTime == 5 %>">selected="selected"</c:if>>05</option>
												    	<option value="06"<c:if test="<%=eTime == 6 %>">selected="selected"</c:if>>06</option>
												    	<option value="07"<c:if test="<%=eTime == 7 %>">selected="selected"</c:if>>07</option>
												    	<option value="08"<c:if test="<%=eTime == 8 %>">selected="selected"</c:if>>08</option>
												    	<option value="09"<c:if test="<%=eTime == 9 %>">selected="selected"</c:if>>09</option>
												    	<option value="10"<c:if test="<%=eTime == 10 %>">selected="selected"</c:if>>10</option>
												    	<option value="11"<c:if test="<%=eTime == 11 %>">selected="selected"</c:if>>11</option>
												    	<option value="12"<c:if test="<%=eTime == 12 %>">selected="selected"</c:if>>12</option>
												    	<option value="13"<c:if test="<%=eTime == 13 %>">selected="selected"</c:if>>13</option>
												    	<option value="14"<c:if test="<%=eTime == 14%>">selected="selected"</c:if>>14</option>
												    	<option value="15"<c:if test="<%=eTime == 15%>">selected="selected"</c:if>>15</option>
												    	<option value="16"<c:if test="<%=eTime == 16%>">selected="selected"</c:if>>16</option>
												    	<option value="17"<c:if test="<%=eTime == 17%>">selected="selected"</c:if>>17</option>
												    	<option value="18"<c:if test="<%=eTime == 18%>">selected="selected"</c:if>>18</option>
												    	<option value="19"<c:if test="<%=eTime == 19%>">selected="selected"</c:if>>19</option>
												    	<option value="20"<c:if test="<%=eTime == 20%>">selected="selected"</c:if>>20</option>
												    	<option value="21"<c:if test="<%=eTime == 21%>">selected="selected"</c:if>>21</option>
												    	<option value="22"<c:if test="<%=eTime == 22%>">selected="selected"</c:if>>22</option>
												    	<option value="23"<c:if test="<%=eTime == 23%>">selected="selected"</c:if>>23</option>
													 </select>시
													 <select name="endMinute" id="endMinute" class="selectpicker">
												 	    <option value="00"<c:if test="<%=eMinute == 0 %>">selected="selected"</c:if>>00</option>
												    	<option value="10"<c:if test="<%=eMinute == 10 %>">selected="selected"</c:if>>10</option>
												    	<option value="20"<c:if test="<%=eMinute == 20 %>">selected="selected"</c:if>>20</option>
												    	<option value="30"<c:if test="<%=eMinute == 30 %>">selected="selected"</c:if>>30</option>
												    	<option value="40"<c:if test="<%=eMinute == 40 %>">selected="selected"</c:if>>40</option>
												    	<option value="50"<c:if test="<%=eMinute == 50 %>">selected="selected"</c:if>>50</option>
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
                                        <label class="hrzn-fm">비고</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                           <div class="row">
				                            	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				                               		 <div class="form-group">
				                                 	   <div class="nk-int-st">
				                                  	      <textarea name="note" class="form-control" rows="5" maxlength="1000">${reservation.note}</textarea>
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
												<option value="A" <c:if test="${reservation.pledge=='A'}">selected</c:if>>작성</option>
												<option value="C"<c:if test="${reservation.pledge=='C'}">selected</c:if>>미작성</option>
											</select>
	                                     </div>
                                    </div>
                                </div>
                            </div>
                        </div>                
                    </div>
                </div>
				<input type="hidden"  name="no" value="${reservation.no}">        		
           	</div>
          	<div class="form-example-int mg-t-15" style="text-align: right;">
          		${msg}
				<input type="submit" class="btn btn-success notika-btn-success waves-effect" value="수정">
				<a href="/reservation"><input type="button" class="btn btn-success notika-btn-success waves-effect" value="목록" ></a>
			</div>
		</div>
	</div>
</form>
	
<script>	
		$(function() {
			
			$( "#startcalender").datepicker({
				dateFormat:"yy-mm-dd",
				showOn:"both",
				buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
				minDate: 0
			});
		});
		
		$(function() {
			$( "#endcalender").datepicker({
				dateFormat:"yy-mm-dd",
				showOn:"both",
				buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
				minDate: 0
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
						
			var editConfirm = window.confirm("정말로 수정 하시겠습니까?");
			if(editConfirm){					
				if(startCalender == ""){
					window.alert("시작 날짜를 입력하세요");
					return false;
				}
				
				if(endCalender == ""){
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