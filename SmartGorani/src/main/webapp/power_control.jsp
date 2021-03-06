<%@page import="Model.BatteryDTO"%>
<%@page import="Model.MemberDAO"%>
<%@page import="Model.DeviceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DeviceDAO"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>전기 제어</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="css/onoff-button.css" rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

</head>
<body>
<body id="page-top">

	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	ArrayList<DeviceDTO> dlist = new DeviceDAO().DeviceSelect(info.getMb_portserial());
	
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
						<a class="collapse-item" href="port.jsp">보유 제품 현황</a> <a
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

						<!-- Nav Item - Messages -->

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <%
 if (info != null) {
 %> <span class="mr-2 d-none d-lg-inline text-gray-600 small">
									<%=info.getMb_name()%> <%
 } else {
 %> user name <%
 }
 %>
							</span>
						</a> <!-- Dropdown - User Information --> <%
 if (info != null) {
 %>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="editinfo.jsp"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="#" data-toggle="modal" data-target="#logoutModal"> <i
										class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
										Logout
								</a>
							</div></li>



						<%
						} else {
						%>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#" data-toggle="modal"
								data-target="#logoutModal"> <i
								class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
								Login
							</a>
						</div>
						</li>

						<%
						}
						%>

					</ul>

				</nav>
				<!-- End of Topbar -->


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-1 text-gray-800">전력 제어</h1>
					<p class="mb-4"></p>

					<!-- Content Row -->
					<div class="row">

						<!-- First Column -->
						<div class="card-body">

							<!-- Custom Font Size Utilities -->
							

								</div>

							</div>


							<!-- Custom Text Color Utilities -->


							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">디바이스별 전력 제어</h6>
								</div>
								<div class="card-body">


									<div class="portName">
										1번
										<label class="switch">  <input type="checkbox" name="dl1" id="dl1" checked="false">
											<div class="slider round"></div>
											</label>
										
									</div>

									<div class="portName">
										2번
										<label class="switch">  <input type="checkbox" name="dl2" id="dl2" checked="false">
											<div class="slider round"></div>
											</label>
										
									</div>
									
									<div class="portName">
										3번
										<label class="switch">  <input type="checkbox" name="dl3" id="dl3" checked="false">
											<div class="slider round"></div>
											</label>
										
									</div>
								

								</div>
							</div>


						</div>
						<!-- Third Column -->
						<div class="card-body">

							<!-- Grayscale Utilities -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">발전기 전력 제어</h6>
								</div>
								<div class="card-body">
									<div>
										<label class="switch"> <input type="checkbox" name="batelec" id = "bl">
											<div class="slider round"></div>
											
											
									</div>
								<p>배터리전기</p>
								<p style="display: none;">일반전기</p>
								</div>
							</div>
							

								</div>
							</div>
						</div>

					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

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
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
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
				} else {
				%>

				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그인</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">로그인 하시겠습니까?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">취소</button>
					<a class="btn btn-primary" href="login.html">확인</a>
				</div>



				<%
				}
				%>
			</div>
		</div>
	</div>


	<!-- Bootstrap core JavaScript-->
	<script type="text/javascript">
		//토글버튼으로 on off 제어하기....
		//전체 전원제어
		
       $('#al').click(function() {
            // 1. 입력한 id 가져오기
          //  <input type='checkbox' /*value='on'*/>
           let allelec = $('input[name=allelec]').val();
	       let batelec = $('input[name=batelec]').val();
	       let dl1 = $('input[name=dl1]').val();
	       let dl2 = $('input[name=dl2]').val();
	       let dl3 = $('input[name=dl3]').val();
            

            console.log($('input[name=allelec]').is(':checked'));
            console.log($('input[name=batelec]').is(':checked'));
            console.log($('input[name=dl1]').is(':checked'));
            console.log($('input[name=dl2]').is(':checked'));
            console.log($('input[name=dl3]').is(':checked'));
            // 2. ajax로 id 보내기 (PowerControlService.do)
            $.ajax({
               url : 'PowerControlService', /* 어디로 보낼지*/
               data : { /* 입력한 email data 보내기*/
            	   allelec : $('input[name=allelec]').is(':checked'),
            	   batelec : $('input[name=batelec]').is(':checked'),
            	   dl1 : $('input[name=dl1]').is(':checked'),
            	   dl2 : $('input[name=dl2]').is(':checked'),
            	   dl3 : $('input[name=dl3]').is(':checked')
               },
               dataType : "text", // 결과값 text로 받아오기
				success : function(result) {
					if (result == 'true') {
						$("p").toggle();
					} else {
						$("p").toggle();
					}
				},
				error : function() {
					alert('실패');
				}

			});

		});
		
					
		
		
		
		
	
		
/*----------------------------------------모든 전기 제어 완료---------------------------------- */		
		//배터리 일반전기 선택

		
		
		 $('#bl').click(function() {
            // 1. 입력한 id 가져오기
           let allelec = $('input[name=allelec]').val();
	       let batelec = $('input[name=batelec]').val();
	       let dl1 = $('input[name=dl1]').val();
	       let dl2 = $('input[name=dl2]').val();
	       let dl3 = $('input[name=dl3]').val();
            

            console.log($('input[name=allelec]').is(':checked'));
            console.log($('input[name=batelec]').is(':checked'));
            console.log($('input[name=dl1]').is(':checked'));
            console.log($('input[name=dl2]').is(':checked'));
            console.log($('input[name=dl3]').is(':checked'));
            // 2. ajax로 id 보내기 (PowerControlService.do)
            $.ajax({
               url : 'PowerControlService', /* 어디로 보낼지*/
               data : { /* 입력한 email data 보내기*/
 
            	   allelec : $('input[name=allelec]').is(':checked'),
            	   batelec : $('input[name=batelec]').is(':checked'),
            	   dl1 : $('input[name=dl1]').is(':checked'),
            	   dl2 : $('input[name=dl2]').is(':checked'),
            	   dl3 : $('input[name=dl3]').is(':checked')
            	
               },
               dataType : "text", // 결과값 text로 받아오기
				success : function(result) {
					if (result == 'true') {
						$("p").toggle();
					} else {
						$("p").toggle();
					}
				},
				error : function() {
					alert('실패');
				}

			});

		});
		
		
		 $('#dl1').click(function() {
	            // 1. 입력한 id 가져오기
	           	let allelec = $('input[name=allelec]').val();
	            let batelec = $('input[name=batelec]').val();
	            let dl1 = $('input[name=dl1]').val();
	            let dl2 = $('input[name=dl2]').val();
	            let dl3 = $('input[name=dl3]').val();

	            
	            console.log($('input[name=allelec]').is(':checked'));
	            console.log($('input[name=batelec]').is(':checked'));
	            console.log($('input[name=dl1]').is(':checked'));
	            console.log($('input[name=dl2]').is(':checked'));
	            console.log($('input[name=dl3]').is(':checked'));
	            
	            // 2. ajax로 id 보내기 (PowerControlService.do)
	            $.ajax({
	               url : 'PowerControlService', /* 어디로 보낼지*/
	               data : { /* 입력한 email data 보내기*/
	            	   allelec : $('input[name=allelec]').is(':checked'),
	            	   batelec : $('input[name=batelec]').is(':checked'),
	            	   dl1 : $('input[name=dl1]').is(':checked'),
	            	   dl2 : $('input[name=dl2]').is(':checked'),
	            	   dl3 : $('input[name=dl3]').is(':checked')
	               },
	               dataType : "text", // 결과값 text로 받아오기
					success : function(result) {
						if (result == 'true') {
							$("p").toggle();
						} else {
							$("p").toggle();
						}
					},
					error : function() {
						alert('실패');
					}

				});

			});
		
		
		
		 $('#dl2').click(function() {
	            // 1. 입력한 id 가져오기
	           	let allelec = $('input[name=allelec]').val();
	            let batelec = $('input[name=batelec]').val();
	            let dl1 = $('input[name=dl1]').val();
	            let dl2 = $('input[name=dl2]').val();
	            let dl3 = $('input[name=dl3]').val();

	            
	            console.log($('input[name=allelec]').is(':checked'));
	            console.log($('input[name=batelec]').is(':checked'));
	            console.log($('input[name=dl1]').is(':checked'));
	            console.log($('input[name=dl2]').is(':checked'));
	            console.log($('input[name=dl3]').is(':checked'));
	            
	            // 2. ajax로 id 보내기 (PowerControlService.do)
	            $.ajax({
	               url : 'PowerControlService', /* 어디로 보낼지*/
	               data : { /* 입력한 email data 보내기*/
	            	   allelec : $('input[name=allelec]').is(':checked'),
	            	   batelec : $('input[name=batelec]').is(':checked'),
	            	   dl1 : $('input[name=dl1]').is(':checked'),
	            	   dl2 : $('input[name=dl2]').is(':checked'),
	            	   dl3 : $('input[name=dl3]').is(':checked')
	               },
	               dataType : "text", // 결과값 text로 받아오기
					success : function(result) {
						if (result == 'true') {
							$("p").toggle();
						} else {
							$("p").toggle();
						}
					},
					error : function() {
						alert('실패');
					}

				});

			});
		
		
		
		 $('#dl3').click(function() {
	            // 1. 입력한 id 가져오기
	           	let allelec = $('input[name=allelec]').val();
	            let batelec = $('input[name=batelec]').val();
	            let dl1 = $('input[name=dl1]').val();
	            let dl2 = $('input[name=dl2]').val();
	            let dl3 = $('input[name=dl3]').val();

	            
	            console.log($('input[name=allelec]').is(':checked'));
	            console.log($('input[name=batelec]').is(':checked'));
	            console.log($('input[name=dl1]').is(':checked'));
	            console.log($('input[name=dl2]').is(':checked'));
	            console.log($('input[name=dl3]').is(':checked'));
	            
	            // 2. ajax로 id 보내기 (PowerControlService.do)
	            $.ajax({
	               url : 'PowerControlService', /* 어디로 보낼지*/
	               data : { /* 입력한 email data 보내기*/
	            	   allelec : $('input[name=allelec]').is(':checked'),
	            	   batelec : $('input[name=batelec]').is(':checked'),
	            	   dl1 : $('input[name=dl1]').is(':checked'),
	            	   dl2 : $('input[name=dl2]').is(':checked'),
	            	   dl3 : $('input[name=dl3]').is(':checked')
	               },
	               dataType : "text", // 결과값 text로 받아오기
					success : function(result) {
						if (result == 'true') {
							$("p").toggle();
						} else {
							$("p").toggle();
						}
					},
					error : function() {
						alert('실패');
					}

				});

			});
		
		
		
		
		
		// 배터리 일반전기 선택
		/*let check2 = $("input[name='batelec']");
		check2.click(function() {
			$("p").toggle();
			let bateleccon = this.checked;
			let alleleccon = $("input[name='batelec']");
			console.log(bateleccon);
			//location.href = "PowerControlService.do?control="+control;

			$.ajax({
				url : 'PowerControlService.do', //어디로 보낼지 주소
				data : {
					bateleccon : bateleccon,
					alleleccon : alleleccon
				//입력한 email data 보내기
				},
				dataType : "text", // 결과값 text로 받아오기
				success : function(result) {
					if (result == 'true') {
						$("p").toggle();
					} else {
						$("p").toggle();
					}
				},
				error : function() {
					alert('실패');
				}

			});

		});     */
		
		// 디바이스별 전력 제어 1번 포트
/*		let check3 = $("input[name='batelec']");
		check2.click(function() {
			$("p").toggle();
			let bateleccon = this.checked;
			console.log(bateleccon);
			//location.href = "PowerControlService.do?control="+control;

			$.ajax({
				url : 'PowerControlService.do', //어디로 보낼지 주소
				data : {
					bateleccon : bateleccon
				//입력한 email data 보내기
				},
				dataType : "text", // 결과값 text로 받아오기
				success : function(result) {
					if (result == 'true') {
						$("p").toggle();
					} else {
						$("p").toggle();
					}
				},
				error : function() {
					alert('실패');
				}

			});

		});   */
		
		
		//삭제버튼 누를시 삭제되게 .. 
		/* 		function deleteCheck() {
		
		 if (confirm("선택된 포트를 삭제 할까요?") == true) {
		 $.ajax({
		 url : 'DeviceDeleteService.do', //어디로 보낼지 주소
		 data : {
		 },
		 dataType : "text", // 결과값 text로 받아오기
		 success : function(result) {
		 if (result == 'true') {
		 $("p").toggle();
		 } else {
		 $("p").toggle();
		 }
		 },
		 error : function() {
		 alert('실패');
		 }

		 });
		 } else {
		 return false;
		
		 }
		 } */
	</script>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

</body>

</body>
</html>