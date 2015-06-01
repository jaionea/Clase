<jsp:include page="plantillas/head.jsp"></jsp:include>

<h1>Ejemplos de etiquetas en HTML5</h1>
<p>Esta pagina a sido creada el <time datetime="2015-05-28 10:54">28/05/2015, 10:54</time></p>

<hr>

<hgroup>
		<h2>titulo1</h2>
		<h3>titulo2</h3>
		<h4>titulo3</h4>
	</hgroup>


<br>
<hr>
<br>
<section>
	<h2>Cuadros</h2>
	<figure>
	
		<img alt="cuadro1" title="cuadro1" src="img/cuadro1.jpg" class="cuadros"/>
		<figcaption><strong>Cuadro Bmx1</strong></figcaption>
	</figure>
	<figure>
		<img alt="cuadro2" title="cuadro2" src="img/cuadro2.jpg" class="cuadros"/>
		<img alt="cuadro3" title="cuadro3" src="img/cuadro3.jpg" class="cuadros"/>
		<img alt="cuadro4" title="cuadro4" src="img/cuadro4.jpg" class="cuadros"/>
		<figcaption><strong>Cuadros Bmx</strong></figcaption>
	</figure>


<br>
<hr>
<br>

<h2>Arranca pa tu cuarto</h2> 
<video width="600" height="auto" controls>
	
  <source title="arranca pa tu cuarto" src="vid/video_mihai.mp4" type="video/mp4">
</video>

<br>
<hr>
<br>


<h2>Bob Marley - I Shot The Sheriff</h2>
<audio controls>
	
  <source title="bob marley" src="audio/Bob_Marley_I_Shot_The_Sheriff.mp3" type="audio/mpeg">

</audio>

<br>
<hr>
<br>

	

<h2>Canvas</h2>



<br>
<hr>
<br>
<h2>Progress</h2>

	<progress value="38" max="100"></progress>
	<meter value="24" min="0" max="50">24 de 50</meter>
	<br>
	<meter value="0.75">75%</meter>

<br>
<hr>
<br>

	<h2>Datalist</h2>
	
	<input list="navegador">

	<datalist  id="navegador">
 	 	<%
 	 		for (int i=0 ; i<200 ; i++ ){
 	 		
 	 			out.print("<option value='Explorador " + i + "'>");
 	 		}
 	 	%>
 		
	</datalist>
	<p><mark><a href="http://www.caniuse.com">Alternativa</a></mark> a datalist</p>
<br>
<%
		

	String nombre = "Mihai";


	out.print("el que se llama " + nombre + " es algo" );



	
%>
	
</section>











<jsp:include page="plantillas/foot.jsp"></jsp:include>



-nuevos elementos html5
section , time, figure, video, audio, canvas 
-hasta aqui




-formularios
 datalist(enlace a caniuse), progres , meter

