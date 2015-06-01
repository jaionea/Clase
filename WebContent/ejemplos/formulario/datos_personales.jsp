<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<%-- <jsp:include page="../../plantillas/nav.jsp"></jsp:include> --%>

<h1>Datos Personales</h1>


<form action="ejemplos/formulario/controlador_datos_personales.jsp"
	method="post">

	<fieldset>

		<legend>Datos Personales</legend>

		<label for="nombre">Nombre:</label><br /> 
		<input type="text"name="nombre" id="nombre" value="" required pattern="[a-zA-ZáéíóúñÁÉÍÓÚÑ]{2,256}" 
			placeholder="Escribe tu nombre" title ="Por favor escribe tu nombre" />
			
<!-- 			oninvalid="SetCustomValidity('Introduce tu Nombre')" -->



		<br /> <br /> 
		
		<label for="apellidos">Apellidos:</label><br /> 
		<input type="text" name="apellidos" id="apellidos" value="" required pattern="[a-zA-ZáéíóúñÁÉÍÓÚÑ]{2,256} [a-zA-ZáéíóúñÁÉÍÓÚÑ]{2,256}"
			placeholder="Tus dos apellidos" /> 
		
		<br /> <br /> 
			
			
		<label for="profesion">Profesion:</label><br />
		<input type="text" name="profesion" id="profesion" value=""	placeholder="Profesion" readonly /> 
			
		<br /> <br /> 
		
		
		<label for="edad">Edad:</label><br /> 
		<input type="text" name="edad" id="edad" size="2" maxlength="2" value=""
			placeholder="0-99" required pattern="[0-9]{1,3}" /> <br /> <br />
			
			
<!-- required=campo obligatorio -->
<!-- parttern=patron para el campo en este caso puede meter hasta 3 digitos-->
			
			
		<label for="edad">Rol:</label><br /> 
		<input type="text" name="rol" id="edad" value="usuario" disabled="disabled" /> <br /> <br />

		<br /> <br />
		
		

		
		<h3>Sexo</h3>
		<br /> 
		
		<input type="radio" name="genero" value="h" />Masculino<br />
		<input type="radio" name="genero" value="m" />Femenino<br /> 
		<input type="radio" name="genero" value="i" checked="checked" />Indefinido<br />


		<br /> <br /> <br />
	
	</fieldset>

	<br /> <br />

	<fieldset>

		<legend>Conocimientos</legend>

		<br /> 
		<input type="checkbox" name="conocimiento" value="1" />HTML<br />
		<input type="checkbox" name="conocimiento" value="2" />JS<br /> 
		<input type="checkbox" name="conocimiento" value="3" />CSS<br /> 
		<input type="checkbox" name="conocimiento" value="4" />JQUERY<br /> 
		<input type="checkbox" name="conocimiento" value="5" />JAVA<br /> <br /> <br />

	</fieldset>

	<br /> <br />
	
	
	
	
	<!-- Listas desplegables basica -->

	<fieldset>
		<legend>Nacionalidad</legend>
				<select name="nacionalidad" id="nacionalidad" multiple="multiple" size="100">
	
	

		</select>
	
	</fieldset>
		
		
		
<!-- 	Listas agrupadas -->

		<br /> <br />
	
		<fieldset>
			
			<legend>Gustos Musicales</legend>
			<select name="gustos_musicales" id="gustos_musicales">
				
				<optgroup label="Rock">
				<option value="1">Guns and Roses</option>
					<option value="2">Nirvana</option>
					<option value="3">AC/DC</option>
				</optgroup>
				
				<optgroup label="Pop">
					<option value="4">Green Day</option>
					<option value="5">Linkin Park</option>
					<option value="6">Paramore</option>
				</optgroup>
				
				<optgroup label="Clasica">
					<option value="7">Johann Sebastian Bach</option>
					<option value="8">Ludwig van Beethoven</option>
					<option value="9">Wolfgang Amadeus Mozart</option>
				</optgroup>

			
			</select>
				
		</fieldset>
	
	
<!-- 	Areas de texto -->

	<br /> <br />

		<fieldset>
	
		<legend>CV</legend>
		
			<textarea name="cv" id="cv" cols="60" rows="10" placeholder="Introduce tu CV en texto plano (minimo 50 caracteres)"
			></textarea>

			<script src="js/tinymce-4.1.10/tinymce.min.js"></script>
			<script>tinymce.init({selector:'textarea'});</script>
	
		
		</fieldset>

		<br /> <br />
	
	
	 	<input type="submit" value="Guardar" /> <br /> <br />
	 	<input type="reset" value="Limpiar" />

</form>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>	