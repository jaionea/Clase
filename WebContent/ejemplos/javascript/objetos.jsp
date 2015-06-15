 <jsp:include page="../../plantillas/head.jsp"></jsp:include> 
 <jsp:include page="../../plantillas/nav.jsp"></jsp:include> 

 <section>
 
 
 
 
 	<article>
 	
 		<header>
 		
 			<h1>Objetos basicos de java script</h1>
 			
 			
 		</header>
 	 	
 		
 		<div class="cnt_article">
 		
 		
 			<h2>Window</h2><br>
 			
 			<ul>
 			
 				<strong>open.window</strong>
 				<li><input type="button" id="w_open" value="window.open(url,nombre,opciones)"></li>
 				<p>window.open; *Chrome no funciona resizable. Hemos metido javascript en la nueva ventana</p>
 				
 				<p><code>document.tittle</code> para el nombre de la pestaña</p>
 				
 				<strong>Confirmar</strong>
 				<li><input type="button" id="confirmar" value="confirmar"></li>
 				
 				<strong>reload.window</strong>
 				<li><input type="button" id="w_reload" value="window.reload()"></li>
 				
 			</ul>
 			
 			<h2>Document</h2><br>
 			
 			<ul>
 			
 				<strong>bg_color</strong>
 				<li><input type="button" id="bg_color" value="bg_color"></li>
 				
 				<strong>fg_color</strong>
 				<li><input type="button" id="fg_color" value="fg_color"></li>
 			
 				<strong>Images</strong>
 				<li><input type="button" id="images" value="images"></li>
 				
 				<strong>links</strong>
 				<li><input type="button" id="links" value="links"></li>
 				
 			</ul>
 			
 			
 			<h2>Location</h2><br>
 			
 			<ul>
 				
 				<li><strong>location: </strong><span id="window_location"></span></li>
 				<li><strong>name: </strong><span id="window_name"></span></li> 				
 				<li><strong>host: </strong><span id="window_host"></span></li>
 				<li><strong>hosname: </strong><span id="window_hostname"></span></li>
 				<li><strong>puerto: </strong><span id="window_port"></span></li>						
 				<strong>URL</strong>
 				<li><input type="button" id="url" value="url"></li>
 				
 				
 			</ul>
 			
 			<style>
 			
 			body{background-image: none!important;}
 			
 			</style>
 		
 		
 					
 		
	 		<script type="text/javascript">
	 		document.getElementById('window_location').innerHTML= window.location;
	 		document.getElementById('window_name').innerHTML= window.name;
	 		document.getElementById('window_host').innerHTML= location.host;
	 		document.getElementById('window_hostname').innerHTML= location.hostname;
	 		document.getElementById('window_port').innerHTML= location.port;
	 		
	 		
	 		//Objeto navigator
	
				
			
			
			//Objeto documet
			
			var btn_bg_color = document.getElementById('bg_color');
	 	 	btn_bg_color.onclick =function(){
	 	 	document.bgColor="#000FF"
	 	 	}
	 	 	
	 	 	var btn_fg_color = document.getElementById('fg_color');
	 	 	btn_fg_color.onclick =function(){
	 	 	document.fgColor="#000FF"
	 	 	}
	 		
	 		
	 		
	 		
	 		
	 		
	 		//Obtener boton URL
	 	 	var btn_url = document.getElementById('url');
	 	 	btn_url.onclick =function(){
	 	 	var urlactual=location.href
	 		alert("La URL actual es: " +urlactual);
	 	 	}
	 		
	 		
	 		
	 		//Obtener boton open
	 		var btn_w_open = document.getElementById('w_open');
	 		
	 		
	 		
	 		
	 		btn_w_open.onclick =function(){
	 			console.info('hemos hecho click');
	 			window.open("ejemplos/javascript/ventana.jsp","nueva_ventana","heigth=600px,width=600px,menubar=no,resizable=no");
	 		
	 		}
	 		//Obtener boton reload
	 	 	var btn_w_reload = document.getElementById('w_reload');
	 	 	btn_w_reload.onclick =function(){
	 	 		
	 	 		location.reload();
	 	 	
	 		
	 	 	}
	 	 	
	 	 	
	 	 //Obtener boton links
		 	 var btn_links = document.getElementById('links');
		 	 btn_links.onclick =function(){
		 	 		
//		 		var dir=document.images[0].src;
//		 	 	var imagenes=document.images.length;
		 	 	
		 	 	var links=document.links;
		 	 	var mensaje="Este documento tiene" + links.length + "links \n"
		 	 	
		 	 	for(i=0; i<links.length; i++){
		 	 		
		 	 		mensaje +=links[i]+"n";
		 	 		
 		 	 		if(i==5)break;
		 	 	}
		 	 	
		 	 	alert(mensaje);
		 	 }
	 	 	
	 	 	
	 	 	
	 	 	
	 	 	
	 	 	
	 	 	//Obtener boton imagenes
		 	 var btn_images = document.getElementById('images');
		 	 btn_images.onclick =function(){
		 	 		
// 		 		var dir=document.images[0].src;
// 		 	 	var imagenes=document.images.length;
		 	 	
		 	 	var imagenes=document.images;
		 	 	var mensaje="Este documento tiene" + imagenes.length + "imagenes \n"
		 	 	
		 	 	for(i=0; i<imagenes.length; i++){
		 	 		
		 	 		mensaje +=imagenes[i].src+"n";
		 	 		
		 	 		if(i==5)break;
		 	 	}
		 	 	
		 	 	alert(mensaje);
		 	 }
	 	 	
		 	//Obtener boton confirmar
		 	 var btn_confirm = document.getElementById('confirmar');
		 	 btn_confirm.onclick =function(){
		 	 		
		 	
		 	 //Ejemplo de uso del boton confirm
	  		
		 	 
		 	 if(confirm("Esta seguro de que desea continuar?")){
	  			alert("El usuario ha decidido continuar");	 
	  		 }
	  		 else{alert("El usuario ha decidido continuar"); }
	 		 
	  		//Ejemplo uso del metodo prompt
	 		
	  		var respuesta=prompt("Introduzca el titulo de su pelicula favorita","")
	  		alert("Su pelicula preferida es: "+respuesta);
		 	 
		 	 }
	 		
	 		
	 		</script>
	 		
	 		
	 		
	 		
	 		
	 		<footer>
	 			
	 			<p>Capitulo 11; pagina263</p>
	 		
	 		</footer>
 		
 		</div>
 	
 	</article>
 
 
 </section>
 
 
 <jsp:include page="../../plantillas/foot.jsp"></jsp:include> 