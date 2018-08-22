<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>

<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/vendManage.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/vendManage.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
</style>
</head>
<body>
	<form  method="post" class="form-search"></form>
	<div class="container-main">
		<div class="div-header-path">
                <!--section starts-->
                <h2>소재 등록</h2>
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
		<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h4>소재 정보&nbsp&nbsp<small>새로운 소재 정보를 입력해 주십시오.</small></h4>
								<small>You can register new material information here.</small>
								<div class="ibox-tools">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="font-size:15px;">
										<i class="fa fa-question-circle"></i>
									</a>
									<div class="dropdown-menu dropdown-user" style="width:300px;">
										<span style="background-color:#ffaf23; color:#fff; border-radius:0.25em; display:inline-block;margin:5px; padding:5px 10px; text-align:center; vertical-align:baseline; font-size:12px; line-height:1; white-space:nowrap;">Tip. 소재 등록</span>
										<p style="margin:5px 10px 10px;">소재 정보를 입력할 수 있습니다. </p>
									</div>
								</div>
							</div>

							<div class="ibox-content">
								<form  method="post" class="form-horizontal">
									<div class="row">
										<div class="col-sm-6 b-r">
											<br>
											<div class="form-group">
												<label class="col-sm-3 control-label">기종 *</label>
												<div class="col-sm-8">
													<input id="input_model" name="model" type="text" class="form-control" placeholder="기종을 입력해 주십시오.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">품번 *</label>
												<div class="col-sm-8">
													<input id="input_itemNum" name="itemNumber" type="text" class="form-control" placeholder="품번을 입력해 주십시오.">
												</div>												
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">품명</label>
												<div class="col-sm-8">
													<input id="input_itemName" name="itemName" type="text" class="form-control" placeholder="품명을 입력해 주십시오.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">재질</label>
												<div class="col-sm-8">
													<input id="input_qualityMaterial" name="qualityMaterial" type="text" class="form-control" placeholder="재질을 입력해 주십시오.">
												</div>
											</div>
										</div>

										<div class="col-sm-6">
											<br>
											<div class="form-group">
												<label class="col-sm-3 control-label">열처리경도</label>
												<div class="col-sm-8">
													<input id="input_heatTreatmentHardness" name="heatTreatmentHardness" type="text" class="form-control" placeholder="열처리강도를 입력해 주십시오.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">비고</label>
												<div class="col-sm-8">
													<input id="input_remarks" name="remarks" type="text" class="form-control" placeholder="비고를 입력해 주십시오.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">거래처</label>
												<div class="col-sm-8">
													<input id="input_seq" name="vendSeq" type="hidden" class="form-control">
													<input id="input_vendName" name="vendName" type="text" class="form-control" placeholder="거래처를 입력해 주십시오.">
												</div>
											</div>
										</div>									
									</div>
									<div class="hr-line-dashed"></div>
									<div class="row">
										<div class="col-sm-offset-10 col-sm-2 text-right">
											<button id="add_submit" type="submit" class="btn btn-primary pull-right m-t-n-xs btn-submit"><i class="fa fa-pencil"></i> 등록하기</button>
										</div>
									</div>
								</form>
							</div> <!-- End of ibox-content -->

						</div>
					</div>
				</div> <!-- End of row -->
			</div>
			
	</div>
	
	<!-- pop up -->
	<button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block" hidden="hidden" id="btn_popup"></button>
	<div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
	  <div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" id="btn_closePopup"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h3 class="modal-title" id="lineModalLabel">거래처 목록</h3>
			</div>
			<div class="modal-body">
				<!-- <c:url value='/com/pageLink.do?link=common/vendPopup'/> -->
				<iframe id="iframe_vendPopup" style="width:100%; height:500px;" frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0>
	            </iframe>
			</div>
		</div>
	  </div>
	</div>
	
	<script>
	<c:if test="${code eq '1'}">
		alert('${msg}');
	</c:if>
		$(document).ready(function() {
			$('#example').DataTable({
				select: {	
		            style: 'multi'
		        }
			});
			
			

		});
		
		
		/*add buttion click*/
		$("#add_submit").click(function(){
			$(".form-horizontal").attr('action','${pageContext.request.contextPath}/app/addMaterial.do').submit();
		});
		
		
		/*거래처 입력란 click*/
		$("#input_vendName").click(function(){
			$("#btn_popup").click();
			//$('#input_vendName').blur();
			//
			$("#iframe_vendPopup").attr('src','./pageLink.do?link=common/vendPopup');
		});
		
		
		
	</script>
</body>
</html>