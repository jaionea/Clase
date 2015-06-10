
<jsp:include page="plantillas/head.jsp"></jsp:include>
<jsp:include page="plantillas/nav.jsp"></jsp:include>



<div id="home" class="clearfix">	


<!-- clearfix;limpio para que no entre nada mas -->


	<span class="icon-box fa-5x"></span>
	
	  
<!-- 	  -->
	 
	 <section>
	 
	 <h1>Ongi etorri</h1>
	  <br>
	  <hr>
	  <br>
	 

	  
	   <h1>El afortunado en leer es:</h1>
	   <label for="btn_ganador" class="numero" id="afortunado" >0</label>
	   <input type="button" class="btn"
			  value="Obtener nuevo afortunad@" 
			  id="btn_ganador" name="btn_ganador" 
			  onclick="obtener_ganador();"/>
	   

		<img alt="dado de seis caras blanco" 
			 title="Dado blanco" 
			 id="dado" 
			 src="img/dado.png" />
	   
	   
		<table border = "1" class="tabla_azul">
			<tr>
				<td colspan="4">Ander</td>
			</tr>
			<tr>
				<td>Javier</td>
				<td>Cristina</td>
				<td>Jorge</td>
				<td>Mihai</td>
			</tr>
			<tr>
				<td>Ieltzu</td>
				<td>Aritz</td>
				<td>Ander</td>
				<td>Javi</td>
			</tr>
			<tr>
				<td>Jon</td>
				<td>Raúl</td>
				<td>Jaione</td>
				<td>David</td>
			</tr>
			<tr>
				<td>Lara</td>
				<td>&nbsp;</td>
				<td>Unai</td>
				<td>MiKel</td>
			</tr>
		</table>
	   

	 
	 </section>
	 
	 
	 
<!-- 	 SideBar contenido no principal -->
	
	 <aside>
	 
<!-- 	 <div style="position: absolute;  top:10px; rigth:5px; width:719px; height: 54;"> -->
	 	
	 	<h3> ENLACES DE INTERES </h3>
	 	
	 	<br/><br/>
	 	
	 	
	 		<ul>
	 			<li><a href="http://formacion.ipartek.com/campus/" target="_blank">Campus Ipartek</a></li>
	 			<li><a href="http://caniuse.com/" target="_blank">Can I use</a></li>
	 			<li><a href="https://github.com/" target="_blank">GitHub</a></li>
	 			<li><a href="http://librosweb.es/libro/css_avanzado/" target="_blank">CSS</a></li>
	 		</ul>
	  </aside>
 	</div> <!--div home -->
	 
	
</div>	 <!--div container
	 
<!-- 	 <div class=clearfix></div> -->
	 
	  <script type="text/javascript" src="js/main.js"></script>
	  
	  
	  
	 
	 
	<script>
	
	//Llamada a la funcion init()
		 init();
	 </script>
	 
	
	 
	
	

<jsp:include page="plantillas/foot.jsp"></jsp:include>	

