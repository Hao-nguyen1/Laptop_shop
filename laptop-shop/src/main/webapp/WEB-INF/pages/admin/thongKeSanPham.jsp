<%@page contentType="text/html" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="ISO-8859-1">
				<title>Quản lý nhãn hiệu</title>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

				<script>
					window.onload = function () {
						var labels = [];
						var data = [];

						// Gọi API để lấy danh sách sản phẩm
						$.ajax({
							type: "GET",
							url: "http://localhost:8080/laptopshop/api/san-pham/all?page=&danhMucId=1&hangSXId=&donGia=&sapXepTheoGia=asc",
							success: function(response) {
								// Xử lý dữ liệu trả về
								var products = response.content;

								// Lọc và sắp xếp sản phẩm có đơn vị bán từ 1 trở lên
								products = products.filter(function(product) {
									return product.donViBan > 0;
								});

								// Sắp xếp sản phẩm theo đơn vị bán từ cao đến thấp
								products.sort(function(a, b) {
									return b.donViBan - a.donViBan;
								});

								for (var i = 0; i < products.length; i++) {
									labels.push(products[i].tenSanPham);
									data.push(products[i].donViBan);
								}

								// Gọi hàm vẽ biểu đồ
								drawChart(labels, data);
							},
							error: function(error) {
								console.error("Error fetching data: ", error);
							}
						});
					};

					// Hàm vẽ biểu đồ
					function drawChart(labels, data) {
						var canvas = document.getElementById('myChart');
						var ctx = canvas.getContext('2d');

						var myChart = new Chart(ctx, {
							type: 'bar',
							data: {
								labels: labels,
								datasets: [{
									label: 'Đơn vị bán',
									data: data,
									backgroundColor: 'rgba(54, 162, 235)',
									borderColor: 'rgba(54, 162, 235, 1)',
									borderWidth: 1
								}]
							},
							options: {
								scales: {
									yAxes: [{
										ticks: {
											beginAtZero: true
										}
									}]
								}
							}
						});
					}


				</script>
				


			</head>

			<body>
				<jsp:include page="template/header.jsp"></jsp:include>
				<jsp:include page="template/sidebar.jsp"></jsp:include>

				<div class="col-md-9 animated bounce">
					<h3 class="page-header">Thống kê</h3>

					<canvas id="myChart" width="1200px" height="400px"></canvas>
					<h4 style="text-align: center; padding-right: 10%">Biểu đồ tổng sản phẩm đã bán theo
						tháng</h4>

				</div>


				<jsp:include page="template/footer.jsp"></jsp:include>

				<script type="text/javascript"
					src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.3/Chart.min.js"></script>
			</body>

			</html>