 <jsp:include page="../../../plantillas/head.jsp"></jsp:include> 
 
 <section>
 <h2>Posicionamiento en CSS</h2>
 
 	<article>
 	
 		<header>
 		
 			<h1>Absoluto</h1>
 			<p>Al posicionar un elemento de forma Absoluta sale del flujo de la pagina, se posiciona respecto al primer padre que encuentre posicionado de forma no estatica, si no encuentra a nadie se posiciona respecto al navegador</p>
 			
 		</header>
 	
 		
 		
 		<style>
 		
/*  		Contenedor posicionado de forma relativa para que la div#capa2 pueda posicionarse de forma absoluta respecto a este elemento. */
/*  		Si quitamos el posicionamiento div#capa2 se posiciona respecto al navegador y nos queda arriba del todo. */
 		
 		.cnt_article{
 		
 			position:relative;
 		}
 		
 		
 		
 		.cnt_article div{
 				border: 1px solid green; 	
 				width: 100px; 				
 				height: 100px; 				
 				margin-bottom: 5px;
 				
 		}
 		
 		 #capa1{
 		 
 		 	left:50px;
 		 	background-color:green;
 		 	top:50px;
 		 	
 		 }
 		 
 		 #capa2{
 		 
 		 	
 		 	background-color:orange;
 		 	position:absolute;
 		 	top:50px;
 		 	left:50px;
 		 }
 		 
 		 #capa3{
 		 
 		 	left:50px;
 		 	background-color:blue;
 		 	bottom: 50px;
 		 	
 		 }
 		
 		
 		</style>
 		
 		<div class="cnt_article">
 		
 		<div id="capa1">Capa1</div>
 		<div id="capa2">Capa2 </div>
 		<div id="capa3">Capa3</div>
 		</div>
 		
 		
 		<footer>
 			
 			Capitulo 9; pagina198
 		
 		</footer>
 	
 	</article>
 
 
 </section>
 
 
 <jsp:include page="../../../plantillas/foot.jsp"></jsp:include> 