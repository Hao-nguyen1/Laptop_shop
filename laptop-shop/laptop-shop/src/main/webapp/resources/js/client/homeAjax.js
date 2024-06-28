
function addToCart(id)
	{
		$.ajax({
			type: "GET",		
			url: "http://localhost:8080/laptopshop/api/gio-hang/addSanPham?id="+id,
			success: function(result){
				if(result.status == "false")
				{
					window.alert("Sản phẩm đang hết hàng, quý khách vui lòng quay lại sau");	
				}else
				{
					window.alert("Đã thêm sản phẩm vào giỏ hàng");
				}		
			},
			error : function(e){
				alert("Error: ",e);
				console.log("Error" , e );
			}
		});

		
	}


$(document).ready(function(){
	ajaxGet();

	function ajaxGet(){
		$.ajax({
			type: "GET",		
			url: "http://localhost:8080/laptopshop/api/san-pham/latest",
			success: function(result){
				var content;
				var section = '<div class="section group">';
				var endsection = '</div>'+'<br>';
				$.each(result, function(i, sanpham){
					
					if(i != result.length-1)
					{
						if(i%4==0)
						{
							content = '';
							content = '<div class="grid_1_of_4 images_1_of_4 products-info"><a href="sp?id='+sanpham.id+'">' +
									'<img style="width: 300px; height: 238px" src="/laptopshop/img/'+sanpham.id+'.png">' +
									'<h3 style="font-weight: bold;">'+sanpham.tenSanPham+'</h3></a>' +
									'<h3>'+accounting.formatMoney(sanpham.donGia)+' VND</h3>'+
									'<button style="background-color;" onClick="addToCart('+sanpham.id+')" class="btn btn-warning"> Giỏ hàng</button>'+
										'<a href="sp?id='+sanpham.id+'"><button  style="font-size: 14px;margin-left:20px; font-family: Arial, sans-serif; padding:7px; border-radius: 5px; color: white; background-color: #007bff; border-color: #007bff;" onClick="product-details('+sanpham.id+')"> Chi tiết </button>'+
									'<h3></h3>'+
									'</div>';
						}else 
						{
							content = content+'<div class="grid_1_of_4 images_1_of_4 products-info"><a href="sp?id='+sanpham.id+'">' +
									'<img style="width: 300px; height: 238px" src="/laptopshop/img/'+sanpham.id+'.png">' +
									'<h3 style="font-weight: bold;">'+sanpham.tenSanPham+'</h3><a/>' +
									'<h3>'+accounting.formatMoney(sanpham.donGia)+' VND</h3>'+
									'<button style="background-color;" onClick="addToCart('+sanpham.id+')" class="btn btn-warning"> Giỏ hàng</button>'+
										'<a href="sp?id='+sanpham.id+'"><button  style="font-size: 14px;padding:8px;  font-family: Arial, sans-serif;margin-left:20px;padding-bottom:5px;  border-radius: 7px; color: white; background-color: #007bff; border-color: #007bff;" onClick="product-details('+sanpham.id+')"> Chi tiết </button>'+
									'<h3></h3>'+
									'</div>';
							if(i%4==3)
							{
								content = section + content + endsection;
								$('.content-grids').append(content);
							}				
						}
					}else
					{
						if(i%4==0)
						{
							content = '';
							content = '<div class="grid_1_of_4 images_1_of_4 products-info"><a href="sp?id='+sanpham.id+'">' +
									'<img style="width: 300px; height: 238px" src="/laptopshop/img/'+sanpham.id+'.png">' +
									'<h3 style="font-weight: bold;">'+sanpham.tenSanPham+'</h3>></a>' +
									'<h3>'+accounting.formatMoney(sanpham.donGia)+' VND</h3>'+
									'<button style="background-color;" onClick="addToCart('+sanpham.id+')" class="btn btn-warning"> Giỏ hàng</button>'+
										'<a href="sp?id='+sanpham.id+'"><button style="font-size: 14px;margin-left:20px; font-family: Arial, sans-serif; padding : 7px;border-radius: 5px; color: white; background-color: #007bff; border-color: #007bff;" onClick="product-details('+sanpham.id+')"> Chi tiết </button>'+
									'<h3></h3>'+
									'</div>';
							content = section + content + endsection;
							$('.content-grids').append(content);
						}else
						{
							content = content+'<div class="grid_1_of_4 images_1_of_4 products-info"><a href="sp?id='+sanpham.id+'">' +
									'<img style="width: 300px; height: 238px" src="/laptopshop/img/'+sanpham.id+'.png">' +
									'<h3 style="font-weight: bold;">'+sanpham.tenSanPham+'</h3></a>' +
									'<h3>'+accounting.formatMoney(sanpham.donGia)+' VND</h3>'+
									'<button style="background-color;" onClick="addToCart('+sanpham.id+')" class="btn btn-warning">Giỏ hàng</button>'+
									'<a href="sp?id='+sanpham.id+'"><button style="font-size: 14px;margin-left:20px; font-family: Arial, sans-serif; border-radius: 5px; padding:7px; color: white; background-color: #007bff; border-color: #007bff;" onClick="product-details('+sanpham.id+')"> Chi tiết </button>'+
									'<h3></h3>'+
									'</div>';
							content = section + content + endsection;
							$('.content-grids').append(content);
						}
					}
				});
			},
			error : function(e){
				alert("Error: ",e);
				console.log("Error" , e );
			}
		});
	}
		
})


