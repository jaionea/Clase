 <jsp:include page="../../plantillas/head.jsp"></jsp:include> 
 <jsp:include page="../../plantillas/nav.jsp"></jsp:include> 

 <section>
 
 
 
 
 	<article>
 	
 		<header>
 		
 			<h1>objetos basicos de java script</h1>
 			
 			
 		</header>
 	 	
 		
 		<div class="cnt_article">
 		
 		
 			<h2>Window</h2>
 			
 			<ul>
 				<li><strong>location: </strong><span id="window_location"></span></li>
 				<li><strong>name: </strong><span id="window_name"></span></li>
 				<p><code>document.tittle</code> para el nombre de la pestaña</p>
 				
 				<li><strong>host: </strong><span id="window_host"></span></li>
 				<li><strong>hosname: </strong><span id="window_hostname"></span></li>
 				<li><strong>puerto: </strong><span id="window_port"></span></li>
 				
 				<strong>open.window</strong>
 				<li><input type="button" id="w_open" value="window.open(url,nombre,opciones)"></li>
 				
 				<strong>reload.window</strong>
 				<li><input type="button" id="w_reload" value="window.reload()"></li>
 				
 				<strong>Confirmar</strong>
 				<li><input type="button" id="confirmar" value="confirmar"></li>
 				
 				<strong>Images</strong>
 				<li><input type="button" id="images" value="images"></li>
 			</ul>
 		
 		
 					
 		
 		<script type="text/javascript">
 		document.getElementById('window_location').innerHTML= window.location;
 		document.getElementById('window_name').innerHTML= window.name;
 		document.getElementById('window_host').innerHTML= location.host;
 		document.getElementById('window_hostname').innerHTML= location.hostname;
 		document.getElementById('window_port').innerHTML= location.port;
 		
 		
 		var urlactual=location.href
 		alert("La URL actual es: " +urlactual);

			
		
		
		//Objeto documet
 		
 		document.fgColor="#000FF"
 		
 		
 		
 		
 		
 		//Obtener boton open
 		var btn_w_open = document.getElementById('w_open');
 		btn_w_open.onclick =function(){
 			console.info('hemos hecho click');
 			window.open("ejemplos/javascript/ventana.jsp");
 		
 		}
 		//Obtener boton reload
 	 	var btn_w_reload = document.getElementById('w_reload');
 	 	btn_w_reload.onclick =function(){
 	 		
 	 		location.reload();
 	 	
 		
 	 	}
 	 	
 	 	//Obtener boton imagenes
	 	 var btn_images = document.getElementById('images');
	 	 btn_images.onclick =function(){
	 	 		
	 		var dir=document.images[0].src
	 	 	var imagenes=document.images.length;		
	 	 	alert("Numero de imagenes: "+imagenes+"direccion"+dir);
	 	 }
 	 	
	 	//Obtener boton confirmar
	 	 var btn_confirm = document.getElementById('confirmar');
	 	 btn_confirm.onclick =function(){
	 	 		
	 	
	 	 //Ejemplo de uso del boton confirm
  		
	 	 
	 	 if(confirm("Esta seguro de que desea continuar?")){
  			alert("El usuario ha decidido continuar");	 
  		 }
  		 else{alert("El usuario ha decidido continuar"); }
 		 
//  		//Ejemplo uso del metodo prompt
 		
  		var respuesta=prompt("Introduzca el titulo de su pelicula favorita","")
  		alert("Su pelicula preferida es: "+respuesta);
	 	 
	 	 }
 		
 		
 		</script>
 		
 		
 		
 		
 		
 		<footer>
 			
 			<p>Capitulo 11; pagina263</p>
 		
 		</footer>
 	
 	</article>
 
 
 </section>
 
 
 <jsp:include page="../../plantillas/foot.jsp"></jsp:include> 