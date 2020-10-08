<%@page import="java.util.LinkedList"%>
<%@page import="book.vo.BookBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="book.vo.CarBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
      String snsid = (String)session.getAttribute("Member_snsid");
      String id = (String)session.getAttribute("Member_id");

      String pickup = request.getParameter("pickup_date"); 
      String end = request.getParameter("end_date"); 
      String SelCarType = request.getParameter("SelCar"); 
      
      LinkedList<CarBean> carList = (LinkedList<CarBean>)request.getAttribute("carList");
//       ArrayList<BookBean> bookList =(ArrayList<BookBean>)request.getAttribute("bookList");

	 	int rentday = (int)request.getAttribute("rentday");
	 	System.out.println(rentday);
	System.out.println(snsid);
		System.out.println(id);
		
    %>
    
    
<!DOCTYPE html>
<html> 
<script src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var today = new Date();
				var dd = today.getDate();
				var mm = today.getMonth() + 1;
				var yyyy = today.getFullYear();
				if (dd < 10) {
					dd = '0' + dd
				}
				if (mm < 10) {
					mm = '0' + mm
				}
				today = yyyy + '-' + mm + '-' + dd;
				document.getElementById("pickup_date").setAttribute("min",
						today);
				
				var offset = $("#pickup_date").offset();
		        $('html, body').animate({scrollTop : offset.top}, 400);
		        
		        /* document.getElementById("scroll").scrollTop = offset.top; */


				$('#pickup_date').change(
						function() {

							var pickup = new Date($('#pickup_date').val());
							document.getElementById('end_date').min = pickup
									.toISOString().substring(0, 10);
							document.getElementById('end_date').value = pickup
									.toISOString().substring(0, 10);
							pickup.setDate(pickup.getDate() + 7);
						});
			});

	
// 	function card(a,b,c,d,e,f){
// 		var car_id = a
// 		var pickup = b
// 		var end = c
// 		var price = d
// 		var member_id = e
// 		var SelCarType = f
// 		window.open("BookPro2.bk?car_id="+car_id+"&pickup="+pickup+"&end="+end+"&rentprice="+price+"&member_id="+member_id+"&SelCarType="+SelCarType"&payType="+card,"카드결제","width=900,height=600");
// 	}
		
	/*무통장입금 결제 팝업창  */	
	function vbank(a,b,c,d,e,f,g){
		var car_id = a
		var pickup = b
		var end = c
		var price = d
		var member_id = e
		var SelCarType = f
		var type = g
		alert(g);
		window.open("BookPro3.bk?car_id="+car_id+"&pickup="+pickup+"&end="+end+"&rentprice="+price+"&member_id="+member_id+"&SelCarType="+SelCarType+"&payType="+type,"카드결제","width=1100,height=850");
	}
	
	function noId(){
		
		
		alert("로그인을 해주세요.");
		location.href="LoginForm.me";
		
	}
	
	function search(id){
		alert(id);
	}		
		
		
		
	//     $('table tr td').click(function() {
	//         var txt = $(this).text();
	//         document.getElementById('car').value = txt;
	//         $('#Car_list tr td').css('border', '1px solid black');
	//         $(this).css('border', '2px solid blue');
	// 	});
</script>

<head>
<meta charset="UTF-8">
<title>WillRent 예약페이지</title>

<%
System.out.println(pickup);
System.out.println(end);
System.out.println(SelCarType);

%>
</head>

<!-- <script type="text/javascript"> -->
		
	
		
<!-- </script> -->

<body class="loader-active">

<jsp:include page="/inc/Header.jsp" />

<section id="home-area">
        <div class="home-slider-item slider-bg-1 overlay">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slideshowcontent">
                            <h1>BOOK A CAR TODAY!</h1>
                            <p>FOR AS LOW AS $10 A DAY PLUS 15% DISCOUNT <br> FOR OUR RETURNING CUSTOMERS</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>



</section>

<!-- <form action="BookForm2.bk" method="post"> -->
<!-- <h2>기간선택</h2> -->



<!-- <h2>차량유형 선택</h2 >	 -->
 
<!-- <table id="Car_list"> -->
<!-- <tr> -->
<%-- <td>경차<input type="radio" name="SelCar" value="경차" <%if(SelCarType.equals("경차")){ %>checked<%} %>></td> --%>
<%-- <td>소형<input type="radio" name="SelCar" value="소형" <%if(SelCarType.equals("소형")){ %>checked<%} %>></td> --%>
<%-- <td>중형<input type="radio" name="SelCar"  value="중형" <%if(SelCarType.equals("중형")){ %>checked<%} %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<%-- <td>준대형<input type="radio" name="SelCar"  value="준대형" <%if(SelCarType.equals("준대형")){ %>checked<%} %>></td> --%>
<%-- <td>대형<input type="radio" name="SelCar"  value="대형" <%if(SelCarType.equals("대형")){ %>checked<%} %>></td> --%>
<%-- <td>승합<input type="radio" name="SelCar"  value="승합" <%if(SelCarType.equals("승합")){ %>checked<%} %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<%-- <td>SUV/RV<input type="radio" name="SelCar"  value="SUVㅣRV" <%if(SelCarType.equals("SUVㅣRV")){ %>checked<%} %>></td> --%>
<%-- <td>전기차<input type="radio" name="SelCar"  value="전기차" <%if(SelCarType.equals("전기차")){ %>checked<%} %>></td> --%>
<%-- <td>수입차<input type="radio" name="SelCar"  value="수입차"  <%if(SelCarType.equals("수입차")){ %>checked<%} %>></td> --%>
<!-- </tr> -->
<!-- </table> -->

<!-- <input type="submit" value="재검색"><br> -->
<!-- </form> -->

 <!--== Book A Car Area Start ==-->
    <div id="book-a-car">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="booka-car-content">
                            <div class="pick-location bookinput-item">
                                <select class="custom-select">
                                  <option selected>지역을 선택해주세요</option>
                                  <option value="1">서울</option>
                                  <option value="2">대전</option>
                                  <option value="3">부산</option>
                                  <option value="3">제주</option>
                                </select>
                            </div>


                       <form action="BookForm2.bk" method="post" style="width:100%; margin-top: 1px">
                       
                            <div class="pick-date bookinput-item">
                               <input type="date" id="pickup_date" name="pickup_date" value="<%=pickup %>">
                            </div>

                            <div class="retern-date bookinput-item">
                               <input type="date" id="end_date" name="end_date" value="<%=end %>">
                            </div>

                            <div class="car-choose bookinput-item">
                                <select class="custom-select" name="SelCar">
                                  <option selected>차량 종류</option>
                                  <option name="SelCar" value="경차" <%if(SelCarType.equals("경차")){ %>checked<%} %>>경차</option>
                                  <option name="SelCar" value="소형" <%if(SelCarType.equals("소형")){ %>checked<%} %>>소형</option>
                                  <option name="SelCar" value="중형" <%if(SelCarType.equals("중형")){ %>checked<%} %>>중형</option>
                                  <option name="SelCar" value="준대형" <%if(SelCarType.equals("준대형")){ %>checked<%} %>>준대형</option>
                                  <option name="SelCar" value="대형" <%if(SelCarType.equals("대형")){ %>checked<%} %>>대형</option>
                                  <option name="SelCar" value="승합" <%if(SelCarType.equals("승합")){ %>checked<%} %>>승합</option>
                                  <option name="SelCar" value="SUVㅣRV" <%if(SelCarType.equals("SUVㅣRV")){ %>checked<%} %>>SUV | RV</option>
                                  <option name="SelCar" value="전기차" <%if(SelCarType.equals("전기차")){ %>checked<%} %>>전기차</option>
                                  <option name="SelCar" value="수입차"  <%if(SelCarType.equals("수입차")){ %>checked<%} %>>수입차</option>
                                                    
                                </select>
                            </div>

                            <div class="bookcar-btn bookinput-item">
                             
                                <button type="submit">재검색</button>
                            </div>
                        </form>
                       
   
               <form action="BookPro.bk" method="post">
<input type="hidden" id="pickup_date" name="pickup_date" value="<%=pickup %>">
<input type="hidden" id="end_date" name="end_date" value="<%=end %>">

<table id="carselect" style="width:100%;" border="1px">

			<tr>
				<td width="10%">차량명</td>
				<td width="30%">차량사진</td>
				<td width="10%">제조사</td>
				<td width="15%">분류</td>
				<td width="10%">가격</td>
				<td width="10%">색상</td>
				<td width="10%">선택</td>
			</tr>
			
			<%
			
// 			public enum CAR_TYPE{
// 				경차(0,"경차"),
// 				소형(1,"소형"),
// 				중형(2,"중형"),
// 				준대형(3,"준대형"),
// 				대형(4,"대형"),
// 				승합(5,"승합"),
// 				SUVㅣRV(6,"SUV/RV"),
// 				전기차(7,"전기차"),
// 				수입차(8,"수입차");
			
			
			
			
			String ct = null;
			
			for(int i = 0; i<carList.size(); i++){
			
				ct = carList.get(i).getCar_type().toString();
				
				if(carList.get(i).isCar_is_rent()==true && ct.equals(SelCarType)) {
			 
				%>
				<tr >
				<td width="10%"><%=carList.get(i).getCar_name() %></td>
				<td width="30%">차량사진 넣을 곳</td>
				<td width="10%"><%=carList.get(i).getCar_maker() %></td>
				<td width="15%"><%=carList.get(i).getCar_type() %></td>
				<td width="10%"><%=carList.get(i).getCar_price_normal()*rentday %></td>
				<td width="10%"><%=carList.get(i).getCar_color() %></td>
			<%-- 				<td><input type="button" class="selbtn" id="selbtn" onclick= "location.href='BookPro.bk?car_id=<%=carList.get(i).getCar_id()%>&pickup=<%=pickup %>&end=<%=end %>&rentprice=<%=carList.get(i).getCar_price_normal() %>&member_id=<%if(id == null){%><%=snsid%><%}else{%><%=id%><%};%>'" value="예약하기"></td> --%>
			
				<%if(id == null){%>
					
					<td>
					<input type="button" class="selbtn" id="selbtn" value="카드결제" onclick="noId()">
					<input type="button" class="selbtn" id="selbtn" value="무통장입금" onclick="noId()">
					</td>
						<%
						}else{
						%>
					
						<td>
						<input type="button" class="selbtn" id="selbtn" value="카드결제" onclick="vbank('<%=carList.get(i).getCar_id()%>','<%=pickup%>','<%=end%>','<%=carList.get(i).getCar_price_normal()*rentday%>','<%if(id == null){%><%=snsid%><%}else{%><%=id%><%};%>','<%=SelCarType%>','card')">
						<input type="button" class="selbtn" id="selbtn" value="무통장입금" onclick="vbank('<%=carList.get(i).getCar_id()%>','<%=pickup%>','<%=end%>','<%=carList.get(i).getCar_price_normal()*rentday%>','<%if(id == null){%><%=snsid%><%}else{%><%=id%><%};%>','<%=SelCarType%>','cash')">
						</td>
					<%
					}
					%>
				
			<%
			}
			}
			%>
			</table>

</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== Book A Car Area End ==-->



<jsp:include page="/inc/Footer.jsp"/>

</body>


</html>