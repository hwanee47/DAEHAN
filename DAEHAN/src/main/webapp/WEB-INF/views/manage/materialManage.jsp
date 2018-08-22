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
</style>
</head>
<body>
	<form  method="post" class="form-search"></form>
	<div class="container-main">
		<div class="div-header-path">
                <!--section starts-->
                <h2>소재 목록</h2>
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
		
			<div class="col-lg-12">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h4 class="panel-title">
							<i class="fa fa-fw fa-file-text-o"></i> 소재 관리
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
						<table id="example" class="table table-striped table-bordered" style="width:100%">
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
			$('#example').DataTable({
				select: {
		            style: 'multi'
		        }
			});
			
			/*search buttion click*/
			$("#btn_search").click(function(){
				$(".form-search").attr('action','${pageContext.request.contextPath}/app/searchMaterialList.do').submit();
			});
			
		});
	</script>
</body>
</html>