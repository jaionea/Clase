
<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>


  <div id="cartelera">
  
		<div class="btn_volver">





		</div>	
		
		
		
		<h1>Cartelera</h1>
		
		


	<div class="clearfix">

		<ul data-list="cartelera">
			
			
			<% for (int i=0; i<5;i++){ %>
			<li>
			
				<div class="cartel">
				
					<a href="cartelera_detalle.html" title="Ver detalle pelicula">
						<img alt="Cartel de la pelicula X"src="http://www.cinesa.es/Manager/Peliculas/upsdndeestno/cartelera.jpg" />
					
						<div class="titulo">
							<h3>¿donde esta NOE?</h3>
						</div>									
					</a>
				
				</div>
			</li>
			<%} %>
			
			
			
		</ul>

	</div>
		
		
		
  </div> <!-- cartelera -->  
<!-- </div> container   -->
 
<!-- </body> -->
<!-- </html> -->










