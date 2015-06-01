<h1>Controlador del formulario</h1>


<%
	//Controlador para recoger parametros del formulario de login.jsp

	//Recoger parametros de la request
	String p1 = (String) request.getParameter("nombre");
	String p2 = (String) request.getParameter("apellidos");
	String p3 = (String) request.getParameter("profesion");
	String p4 = (String) request.getParameter("edad");
	String p5 = (String) request.getParameter("rol");
	String[] p6 = request.getParameterValues("conocimiento");
	String pcv = (String) request.getParameter("cv");
	
	//Recoger parametros de radio button

	String pRadio = (String) request.getParameter("genero");
	
	
	
	
	
	//Pintar los parametros en el HTML
	out.print("<p> Nombre: " + p1 + "</p>");
	out.print("<p>Apellidos: " + p2 + "</p>");
	out.print("<p>Profesion: " + p3 + "</p>");
	out.print("<p>Edad: " + p4 + "</p>");
	out.print("<p>Rol: " + p5 + "</p>");
	out.print("<p>Sexo: " + pRadio + "</p>");
	out.print("<p>Conocimientos:");

	if (p6 != null) {
		
		out.print("<ul>");
		
		for (int i = 0; i < p6.length; i++) {
			
			out.print("<li>" + p6[i] + "</li>");
		
			
		}
	}
	else{
		out.print("Selecciona tus conocimientos");
	}
	
	//mostrar cv
	
	out.print ("<h2>Tu Curriculum Vitae</h2>");
	out.print (pcv);
	
	
%>