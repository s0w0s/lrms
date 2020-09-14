<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/common/top.jsp"%>

    <!-- Normal Table area Start-->
    <div class="normal-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- <div class="normal-table-list mg-t-30"> -->
					<div class="normal-table-list">
                        <div class="basic-tb-hd">
                            <h2>관리자 정보</h2>
                            <p>관리자 정보를 조회할 수 있습니다.</p>
                        </div>
                        <div class="bsc-tbl-hvr">
                            <table class="table table-hover">
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
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
                            </table>
                        </div>
                    </div>
					<div class="form-example-int mg-t-15" style="text-align: right;">
						<a href="/manager/form"><button id="add" class="btn btn-success notika-btn-success">등록</button></a>
					</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Normal Table area End-->
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>    