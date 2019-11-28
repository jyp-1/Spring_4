<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
<c:import url="./layout/bootstrap.jsp"></c:import>
</head>

<body>
<c:import url="./layout/nav.jsp"></c:import>
<c:import url="./layout/summernote.jsp"></c:import>
<h1>
	Hello world! ${dto}
</h1>

<P id="p">  The time on the server is ${serverTime}. </P>


<button id="btn3">Click Movies</button>
<script type="text/javascript">
	$("#btn3").click(function() {
		$.ajax({
			type:"GET",
			url:"https://yts.lt/api/v2/list_movies.json",
		
			data:{
				limit:2,
			},
			success:function(data){
				
			}
		});
	});
</script>



<button id="btn2">Click</button>


<script type="text/javascript">
	$("#btn2").click(function() {
		$.ajax({
			type:"GET",
			url:"https://api.manana.kr/exchange/price.json",
			data:{
				base:"USD",price:1,code:"KRW"
			},
			success:function(data){
				console.log(data.KRW)
			}
		});
	});
</script>



<button id="btn">Get Json1</button>

<script type="text/javascript">
	$("#btn").click(function() {
		$.get("./getJson3?num=1", function(data) {
			/* for(var i=0;i<data.length;i++){
				console.log(data[i].num);
			} */
			$.each(data,function(i,vo){ 		//index,data
				console.log(i);
				console.log(vo.num);
			});
			alert(data[0].num);
			
			//data=data.trim(data);
			//alert(typeof data);
			//data=JSON.parse(data);
			//alert(data.writer)
			//alert(data.title)
			//alert(data.num) 
		});
	});
	
	

</script>


</body>
</html>
