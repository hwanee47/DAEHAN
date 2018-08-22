<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
	<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css" rel="stylesheet">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
<style>
</style>
</head>
<body>
	<form  method="post" class="form-search"></form>
	<div class="div-buttonGroup">
		<button type="button" class="btn btn-success btn-lg" id="btn_search"><i class="glyphicon glyphicon-search"></i></button>
	</div>
	<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>순번</th>
                <th>업체명</th>
                <th>대표자</th>
                <th>주소</th>
            </tr>
        </thead>
        <tbody>
           <c:forEach var="vendList" items="${vendList}">
    			<tr>
    				<td>${vendList.SEQ}</td>
	                <td>${vendList.VEND_NAME}</td>
	                <td>${vendList.VEND_REP}</td>
	                <td>${vendList.VEND_ADDR}</td>
            	</tr>
    		</c:forEach>
        </tbody> 
    </table>
	            
			
	<script>
		$(document).ready(function() {
			$('#example').DataTable({
				select: {
		            style: 'single'
		        }
			});
			
		});
		
	
		/*search buttion click*/
		$("#btn_search").click(function(){
			$(".form-search").attr('action','${pageContext.request.contextPath}/app/searchVendList.do?program=popup').submit();
		});
		
		
		/*거래처 테이블 Row 더블클릭 이벤트*/
		$('#example tbody').on('dblclick', 'tr', function () {
			var data = $('#example').DataTable().row( this ).data();
			
			//거래처 코드
			$(parent.document).find("#input_seq").val(data[0]);
			
			//거래처 명
			$(parent.document).find("#input_vendName").val(data[1]);
			
			//팝업닫기
			$(parent.document).find('#btn_closePopup').click();
		    
		});


	</script>
</body>
</html>