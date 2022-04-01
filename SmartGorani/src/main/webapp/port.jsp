<%@page import="Model.DeviceDAO"%>
<%@page import="Model.DeviceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>회원정보수정</title>


<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/table1.css">
<link rel="stylesheet" type="text/css" href="css/table1main.css">

</head>

<body id="page-top">
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	ArrayList<DeviceDTO> dlist = new DeviceDAO().DeviceSelect(info.getId());
	%>
	<!-- @ strat : Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a href="main.jsp"> <img src="img/goraniface.png"
				style="width: 25%; display: block; margin: 0px auto; margin-top: 20px"></a>


			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="main.jsp">
				<div class="sidebar-brand-icon rotate-n-15"></div>
				<div class="sidebar-brand-text mx-3">SmartGorani</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="main.jsp">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>메인</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="check.jsp"> <i
					class="fas fa-fw fa-chart-area"></i> <span>조회</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="power_control.jsp"> <i class="fas fa-fw fa-wrench"></i> <span>전기제어</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="board.jsp"> <i
					class="fas fa-fw fa-table"></i> <span>게시판</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-cog"></i> <span>환경설정</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">my page</h6>
						<a class="collapse-item" href="port.jsp">포트 추가 제거</a> <a
							class="collapse-item" href="enrollproduct.jsp">제품 등록</a> <a
							class="collapse-item" href="editinfo.jsp">회원 정보 수정</a>
						<div class="collapse-divider"></div>
					</div>
				</div></li>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			<!-- @ end -->

			<!-- Divider -->
			<hr class="sidebar-divider">
			<a href="main.jsp"><img src="img/logo4.png"
				style="width: 70%; display: block; margin: 0px auto; margin-top: 20px">
			</a>
		</ul>
		<!-- @ end -->



		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>



					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> </a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_1.svg"
											alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler · 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_2.svg"
											alt="...">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun · 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_3.svg"
											alt="...">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez · 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog · 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <%
 if (info != null) {
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small"> <%=info.getName()%>
									<%
									} else {
									%> user name <%
									}
									%></span>
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="updateinfo.jsp"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">포트 등록</h1>

					</div>
					<div class="">
						<div class="wrap-table100">
							<div class="table100 ver1">
								<div class="table100-firstcol">
									<table>
										<tbody>
											<tr class="row100 body">
												<td class="cell100 column1">
													<p class="form-control border-0 small">아이디</p>
												</td>
											</tr>
											<tr class="row100 body">
												<td class="cell100 column1">
													<p class="form-control border-0 small">제품 시리얼 번호</p>
												</td>
											</tr>
											<tr class="row100 body">
												<td class="cell100 column1">
													<p class="form-control border-0 small">포트 번호</p>
												</td>
											</tr>
											<tr class="row100 body">
												<td class="cell100 column1">
													<p class="form-control border-0 small">포트 설명</p>
												</td>
											</tr>
											<tr class="row100 body">
												<td class="cell100 column1">
													<p class="form-control border-0 small">콘센트명</p>
												</td>
											</tr>

										</tbody>
									</table>
								</div>

								<div class="wrap-table100-nextcols js-pscroll">
									<div class="table100-nextcols">
										<form
											action="DeviceInsertService.do" method="post">
											<table>
												<tbody>
													<tr class="row100 body">
														<td class="cell100 column1"><span
															class="form-control bg-light border-0 small"><%=info.getId()%></span>
															<input type="hidden" name="mb_id" value="<%=info.getId()%>"> </td>
													</tr>
													<tr class="row100 body">
														<td class="cell100 column1"><input
															class="form-control bg-light border-0 small" type="text"
															name="p_serial"></td>

													</tr>
													<tr class="row100 body">
														<td class="cell100 column1"><input
															class="form-control bg-light border-0 small" type="text"
															name="dv_num"></td>
													</tr>
													<tr class="row100 body">
														<td class="cell100 column1"><input
															class="form-control bg-light border-0 small" type="text"
															name="dv_desc"></td>
													</tr>
													<tr class="row100 body">
														<td class="cell100 column1"><input
															class="form-control bg-light border-0 small" type="text"
															name="consent"></td>
													</tr>
												</tbody>
											</table><input type="submit"
						class="d-none d-sm-block btn btn-sm btn-primary shadow-sm">
					<i class="fa-sm text-white-50">수정완료</i>
					</form>
									</div>
								
								</div>
							</div>
						</div>
					</div>
					
					<!-- /.container-fluid -->



					<!-- 포트 현황 및 제거 -->

					<h1 class="h3 mb-1 text-gray-800">보유 포트 현황</h1>
					<p class="mb-4">
						<%
						if (info != null) {
							out.print(info.getName() + "님이");
						%>
						보유한 포트 현황입니다. 더이상 사용 하지 않은 포트는 삭제할 수 있습니다!
					</p>
					<%
					}
					%>

					<!-- Content Row -->
					<div class="row">



						<%
						int i = 0;
						if (dlist != null) {
							for (i = 0; i < dlist.size(); i++) {
						%>
						<div class="col-lg-6">

							<div class="card mb-4 py-3 border-left-primary">
								<div class="card-body">
									<span> <%=dlist.get(i).getDv_num()%></span> 
									<span><%=dlist.get(i).getDv_desc()%></span> 
									<span> <%=dlist.get(i).getConsent_name()%></span>
									<input type="hidden" name="inputDelete" value="<%=dlist.get(i).getDv_seq()%>">
									<button type="button" onclick="DeleteDevice()"
										class="d-none d-sm-block btn btn-sm btn-primary shadow-sm">
										<i class="fa-sm text-white-50">삭제하기</i>
									</button>
								</div>
							</div>

						</div>
							<%}
						} else {
						%>
						<div class="col-lg-6">

							<div class="card mb-4 py-3 border-left-primary">
								<div class="card-body">포트를 등록해주세요 !</div>
							</div>

						</div>

						<%
						}
						%>


					</div>

				</div>

			</div>



			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Smart Gorani 2022</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
	</div>
	<!-- End of Content Wrapper -->


	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<%
				if (info != null) {
				%>
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">로그아웃 하시겠습니까?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">취소</button>
					<a class="btn btn-primary" href="LogoutService.do">확인</a>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		//삭제버튼 누를시 삭제되게 .. 
 		function DeleteDevice() {
 			let dv_seq = $('input[name=inputDelete]').val();
			console.log(dv_seq);
		 if (confirm("선택된 포트를 삭제 할까요?") == true) {
		 $.ajax({
		 url : 'DeviceDeleteService.do', //어디로 보낼지 주소
		 data : {
		 // 선택한 데이터를 .. 어떻게 보낼까
		 dv_seq : dv_seq
		 },
		 dataType : "text", // 결과값 text로 받아오기
		 success : function(result) {
		 if (result == 'true') {
		 alert('삭제 되었습니다.');
		 } else {
		 alert('삭제 실패!');
		 }
		 },
		 error : function() {
		 alert('실패');
		 }

		 });
		 } else {
		 return false;
		
		 }
		 } 

		// #btnDelete 누르면 삭제 되게? --->테스트해봐야됨>>안됨..
/* 		$('#btnDelete').on('click', function() {
			if (confirm("선택된 포트를 삭제 할까요?") == true) {
				let dv_seq = $('button[name=dv_seq]').val();
				console.log(dv_seq);
				$.ajax({
					url : 'DeviceDeleteService.do', //어디로 보낼지 주소
					data : {
						dv_seq : dv_seq
					},
					dataType : "text",
					success : function(result) {
						if (result == 'true') {
							alert('삭제 되었습니다.');
						} else {
							alert('삭제 실패!');
						}
					},
					error : function() {
						alert('실패');
					}

				});
			} else {
				return false;
			}
		}); */
	</script>



	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>
</body>

</html>