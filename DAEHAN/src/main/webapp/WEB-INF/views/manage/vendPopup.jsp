<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/vendManage.css" rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/vendManage.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
</style>
</head>
<body>
	<form  method="post" class="form-search"></form>
	
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
		            style: 'multi'
		        }
			});
			
			
			/* $('#example tbody').on( 'click', 'tr', function () {
		        $(this).toggleClass('selected');
		    } ); */
		    
			$(".form-search").attr('action','${pageContext.request.contextPath}/app/searchVendList.do?PG=popup').submit();
		});
		
	
		
		/*거래처 입력란 click*/
		$("#input_vendName").click(function(){
			$("#btn_popup").click();
			//$('#input_vendName').blur();
			$(".form-search").attr('action','${pageContext.request.contextPath}/app/searchVendList.do').submit();
		});
	</script>
</body>
</html>