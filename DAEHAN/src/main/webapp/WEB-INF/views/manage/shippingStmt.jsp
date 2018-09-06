<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/css/vendManage.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/vendManage.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style>
	@media (max-width: 767px) {
		#div_vendList, #div_materialList{
			width:100% !important;
			float:none !important;
			
		}
	}
	
	@media (min-width: 768px) {
		#div_vendList {
			width:30% !important;
			float:left !important;
		}
		#div_materialList {
			width:70% !important;
			float:left !important;
		}
	}
</style>
</head>
<body>
	<form  method="post" class="form-search"></form>
	<div class="container-main">
		<div class="div-header-path">
                <!--section starts-->
                <h2>외주 출고 명세서 출력</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="fa fa-fw fa-home"></i> Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">Users</a>
                    </li>
                    <li>
                        <a href="admin_userlist.html">Users List</a>
                    </li>
                </ol>
		</div>
			<div class="col-lg-12" id="div_vendList">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h4 class="panel-title">
							<i class="fa fa-fw fa-file-text-o"></i> 거래처 목록
						</h4>
						<span class="span-pull-right"> <i
							class="glyphicon glyphicon-chevron-up showhide clickable"
							title="Hide Panel content"></i> <i
							class="glyphicon glyphicon-remove removepanel"></i>
						</span>
					</div>
					
					<div class="panel-body table-responsive">
						<div class="div-buttonGroup">
							<button type="button" class="btn btn-success btn-lg" id="btn_searchVendList"><i class="glyphicon glyphicon-search"></i></button>
						</div>
						<table id="table_vend" class="table table-striped table-bordered" style="width:100%">
					        <thead>
					            <tr>
					                <th>순번</th>
					                <th>업체명</th>
					                <th>대표자</th>
					                <th>주소</th>
					            </tr>
					        </thead>
					        <%-- <tbody>
					           <c:forEach var="vendList" items="${vendList}">
					    			<tr>
					    				<td>${vendList.SEQ}</td>
						                <td>${vendList.VEND_NAME}</td>
						                <td>${vendList.VEND_REP}</td>
						                <td>${vendList.VEND_ADDR}</td>
					            	</tr>
					    		</c:forEach>
					        </tbody> --%>
					    </table>
					</div>
				</div>
			</div>
			
			<div class="col-lg-12" id="div_materialList">
				
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h4 class="panel-title">
							<i class="fa fa-fw fa-file-text-o"></i> 소재 목록
						</h4>
						<span class="span-pull-right"> <i
							class="glyphicon glyphicon-chevron-up showhide clickable"
							title="Hide Panel content"></i> <i
							class="glyphicon glyphicon-remove removepanel"></i>
						</span>
					</div>
					
					<div class="panel-body table-responsive">
						<div class="div-buttonGroup">
							<button type="button" class="btn btn-success btn-lg" id="btn_search"><i class="glyphicon glyphicon-search"></i></button>
						</div>
						<table id="table_material" class="table table-striped table-bordered" style="width:100%">
					        <thead>
					            <tr>
					                <th>거래처</th>
					                <th>기종</th>
					                <th>품번</th>
					                <th>품명</th>
					                <th>재질</th>
					                <th>열처리경도</th>
					                <th>비고</th>
					            </tr>
					        </thead>
					        <tbody>
					           <c:forEach var="materialList" items="${materialList}">
					    			<tr>
					    				<td>${materialList.VEND_NAME}</td>
						                <td>${materialList.MODEL}</td>
						                <td>${materialList.ITEM_NUMBER}</td>
						                <td>${materialList.ITEM_NAME}</td>
						                <td>${materialList.QUALITY_MATERIAL}</td>
						                <td>${materialList.HEAT_TREATMENT_HARDNESS}</td>
						                <td>${materialList.REMARKS}</td>
					            	</tr>
					    		</c:forEach>
					        </tbody> 
					    </table>
					</div>
				</div>
			</div>
		</div>
	<script>
		$(document).ready(function() {
			var tableVend=$('#table_vend').DataTable({
				ajax : "${pageContext.request.contextPath}/app/searchVendList.do?program=popup",
                columns : [
                    {"data": "SEQ"},
                    {"data": "VEND_NAME"},
                    {"data": "VEND_REP"},
                    {"data": "VEND_ADDR"}
                ]
			});
			
			$('#table_material').DataTable({
				select: {
		            style: 'multi'
		        }
			});
			
			/*search buttion click*/
			$("#btn_searchVendList").click(function(){
				tableVend.ajax.url("${pageContext.request.contextPath}/app/searchVendList.do?program=popup").load();
			});
			
			
			$('#vend tbody').on('dblclick', 'tr', function () {
				alert(123);
			});
			
		});
	</script>
</body>
</html>