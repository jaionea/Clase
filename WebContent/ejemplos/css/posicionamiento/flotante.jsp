 <jsp:include page="../../../plantillas/head.jsp"></jsp:include> 
 
 <section>
 
 
 <h2>Posicionamiento en CSS</h2>
 
 	<article>
 	
 		<header>
 		
 			<h1>Elementos flotantes</h1>
 			<p> </p>
 			
 		</header>
 	
 		
 		
 		<style>	
 		
 		
 		 	.cnt_article div{
 		 	
 			border: 1px solid green; 	
 			width: 100px; 				
 			height: 100px; 				
 			margin-bottom: 5px;
 				
 			}
 		
 		 #capa1{ 		 
 		 	
 		 	background-color:green; 		 	
 		 	float:left;
 			 }
 		 
 		 #capa2{
 		 
 		 	
 		 	background-color:orange;
 		 	float:left;
 		 	
 		 	
 		 }
 		 
 		 #capa3{
 		 
 		 	
 		 	background-color:blue;
 		 	float:left;
 		 	clear:left;
 		 	
 		 }
 		
 		
 		</style>
 		
 		<div class="cnt_article">
 		
 		<div id="capa1">Capa1</div>
 		<div id="capa2">Capa2 </div>
 		<div id="capa3">Capa3</div>
 		<p style="clear: both; border:1px dotted grey"> Parrafo invible para hacer CLEAR</p>
 		</div>
 		
 		
 		<br><br>
 		
 		<footer>
 			
 			Capitulo 9; pagina198
 			
 			<a href="http://librosweb.es/libro/css_avanzado/capitulo_1/limpiar_floats.html">Limpiar float</a>
 			<a href="http://learnlayout.com/clearfix.html"></a>
 			<a href="http://learnlayout.com/clearfix.html"></a>
 			
 		
 		</footer>
 	
 	</article>
 
 
 </section>
 
 
 <jsp:include page="../../../plantillas/foot.jsp"></jsp:include> 