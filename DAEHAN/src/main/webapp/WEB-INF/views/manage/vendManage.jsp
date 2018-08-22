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
	<form  method="post" class="form-search">
	</form>
	<div class="container-main">
		<div class="div-header-path">
                <!--section starts-->
                <h2>거래처목록</h2>
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
							<i class="fa fa-fw fa-file-text-o"></i> 거래처 관리
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
					                <th>구분</th>
					                <th>업체명</th>
					                <th>대표자</th>
					                <th>사업자번호</th>
					                <th>업태</th>
					                <th>종목</th>
					                <th>주소</th>
					                <th>전화번호</th>
					                <th>팩스번호</th>
					                <th>메일주소</th>
					            </tr>
					        </thead>
					        <tbody>
					           <c:forEach var="vendList" items="${vendList}">
					    			<tr>
					    				<td>${vendList.VEND_DIV}</td>
						                <td>${vendList.VEND_NAME}</td>
						                <td>${vendList.VEND_REP}</td>
						                <td>${vendList.VEND_NUM}</td>
						                <td>${vendList.VEND_CONDITION}</td>
						                <td>${vendList.VEND_JONGMOK}</td>
						                <td>${vendList.VEND_ADDR}</td>
						                <td>${vendList.VEND_PHONE_NUM}</td>
						                <td>${vendList.VEND_FAX_NUM}</td>
						                <td>${vendList.VEND_MAIL_ADDR}</td>
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
			
			/* $('#example tbody').on( 'click', 'tr', function () {
		        $(this).toggleClass('selected');
		    } ); */
		    
			/*search buttion click*/
			$("#btn_search").click(function(){
				$(".form-search").attr('action','${pageContext.request.contextPath}/app/searchVendList.do').submit();
			});
		});
	</script>
</body>
</html>