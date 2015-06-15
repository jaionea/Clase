<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<script src="js/utilidades.js"></script>

<section id="javaScript" class="clearFix">

	<h2>JavaScript</h2>
	<article>
		<header>
			<h2>Objetos basicos de JavaScriptt</h2>
			<p></p>
		</header>
		
		
		<div class="cnt_article">
		

			<h2>Date</h2>
			
			
			<script type="text/javascript">
			
				
				
				//Objeto objeto fecha actual
				
				var fecha= new Date();
				var fechaGMT = fecha.toGMTString();
				var fechaLocale = fecha.toLocaleString();
				
				document.write ("Fecha actual:   <b>" + fecha+ "<br>");				
				document.write ("Fecha actual GMT:" + fechaGMT + "<br>");
				document.write ("Fecha actual GMT:" + fechaLocale + "<br>");

			</script>

		</div>		
		
		<footer>
			Capitulo 13; pagina 316
		</footer>
	
	</article>

</section>
<jsp:include page="../../plantillas/foot.jsp"></jsp:include>