<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- DECLARATION -->
	<%!boolean formatar = true; %>
	
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		}
	%>
	
	<!-- EXPRESSION -->
	<h1>A data de hoje �: <%=new java.util.Date() %></h1>
	<h1>A data de hoje �: <%=today() %></h1>
	
	<!-- SCRIPTLET -->
	<h1>A data de hoje �: <% if (formatar){
								out.println(today());
							 }else{
								 out.println(new java.util.Date());
						   }%></h1>



<%!int idade = 20; %>
 	 
	<%! int calcularBatimentos(int idade){
	return 80 * 60 * 24 * 365 * idade;
	 }%>
	 
	 
<!-- SCRIPTLET -->
	 <% if (calcularBatimentos(idade) > 50){
		 out.println("Batimentos normal");
		 } else {
		 out.println("Batimentos fora da normalidade");
		 }%>

<!-- EXPRESSION -->
 	 
<h1>Batimentos card�acos: <%=calcularBatimentos(idade) %></h1>




<%! Calendar cal = Calendar.getInstance();%>
		
		<%!int segundos(){
			return cal.get(Calendar.SECOND);
		}%>
		
		<%!String par = "par";%>
		<%!String impar = "impar";%>
<%if(segundos() % 2 == 0){
			out.println(par);
		}else{
			out.println(impar);
		}%>
<h1>S�o <%=segundos()%> segundos</h1>

</body>
</html>