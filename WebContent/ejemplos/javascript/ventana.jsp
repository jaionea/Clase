 <jsp:include page="../../plantillas/head.jsp"></jsp:include> 
 <jsp:include page="../../plantillas/nav.jsp"></jsp:include> 

 <section>
 
 
 
 
 	<article>
 	
 		<header>
 		
 			<h1>objetos basicos de java script</h1>
 			
 			
 		</header>
 	 	
 		
 		<div class="cnt_article">
 		
 		
 			<h2>Window</h2>
 			
 			
 		
 		<strong>open.window</strong>
 		<input type="button" id="w_close" value="window.close(url,nombre,opciones)">
 		
 		
 		<script type="text/javascript">
 		
 		//Obtener boton
 		var btn_w_close = document.getElementById('w_close');
 		btn_w_close.onclick =function(){
 			console.info('hemos hecho click');
 			window.close("ejemplos/javascript/objetos.jsp");
 				
 		}
 		
 		</script>
 		
 		<footer>
 			
 			<p>Capitulo 11; pagina263</p>
 		
 		</footer>
 	
 	</article>
 
 
 </section>
 
 
 <jsp:include page="../../plantillas/foot.jsp"></jsp:include> 