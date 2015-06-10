 <jsp:include page="../../plantillas/head.jsp"></jsp:include> 
 <jsp:include page="../../plantillas/nav.jsp"></jsp:include> 
 <section>
 
 

 
 	<article>
 	
 		<header>
 		
 			<h1>Calculadora</h1>
 			
 			
 		</header>
 	 	
 		
 		<div class="cnt_article">
 		
 		<table  class="tabla_calc">
			
			<tr>
				<td><input type="button" value="7" ></td>
				<td><input type="button" value="8" ></td>
				<td><input type="button" value="9" ></td>
				<td><input type="button" value="/" ></td>
			</tr>
			<tr>
				<td><input type="button" value="4" ></td>
				<td><input type="button" value="5" ></td>
				<td><input type="button" value="6" ></td>
				<td><input type="button" value="*" ></td>
			</tr>
			<tr>
				<td><input type="button" value="1" ></td>
				<td><input type="button" value="2" ></td>
				<td><input type="button" value="3" ></td>
				<td><input type="button" value="+" ></td>
			</tr>
			<tr>
				<td><input type="button" value="."></td>
				<td><input type="button" value="0"></td>
				<td><input type="button" value="="></td>
				<td><input type="button" value="-"></td>
			</tr>
		</table>
	   
 		
 		
 		
 		
 		
 		
 		
 		<script>
 		
 		//Declaracion de variables globales
 		
 		var cantidad1=45;
 		var cantidad2=20;
 		
 		
 		
 		//definimos la funcion
 		function sumar( parametro1 , parametro2){
 		
 			var resultado;	//undefined
 			//Uso correcto de las variables (sin var)
 		
 			resultado=parametro1 + parametro2;
 			return resultado;
 		 		
 		}
 		
 		
 		//definir operaciones para la calculadora
 		const SUMAR       = 0;
 		const RESTAR       = 1;
 		const MULTIPLICAR = 2;
 		const DIVIDIR     = 3;
 		const MODULO      = 4;
 		
 		
 		//operaciones para el parametro1
 		const INCREMENTO  = 5;
 		const DECREMENTO  = 6;
 		const ES_PAR      = 7; //true si es para
 		
 		/**
 			Calcula la operacion solicitada para los dos parametros
 		*/
 		
 		function calculadora(parametro1, parametro2, operacion){
 			
 			var resultado=null;
 			
 			//realizar operacion solicitada
 			if(operacion == SUMAR){
 				resultado = parametro1 + parametro2;
 			}else if (operacion == RESTAR){
 				resultado = parametro1 - parametro2;
 			}else if(operacion == MULTIPLICAR){
 				resultado = parametro1 * parametro2;
 			}else if(operacion == DIVIDIR){
 				resultado = parametro1 / parametro2;
 			}else if(operacion == MODULO){
 				resultado = parametro1 % parametro2;
 			}else if(operacion == INCREMENTO){
 				resultado = ++parametro1;
 			}else if(operacion == DECREMENTO){
 				resultado = --parametro1;
 			}else if(operacion == ES_PAR){
 				
 				if(parametro1 % 2==0)
 				{resultado = true;}
 				
 				else{resultado=false}
 			}
 			
 			else{console.error(operacion +'operacion no soportada')}
 			
 			return resultado;
 		}
 		
  		console.info('Calculadora\n')
  		console.info('5 + 5 =  '+ calculadora(5,5,SUMAR));
  		console.info(' 10 - 67 ='+ calculadora(10,67,RESTAR));
 		console.info(' 7 x 7 ='+ calculadora(7,7,MULTIPLICAR));
 		console.info(' 100 : 2 ='+ calculadora(100,2,DIVIDIR));
		console.info(' 7 : 2 ='+ calculadora(7,2,MODULO));
  		console.info(' 7 + 1 ='+ calculadora(7,0,INCREMENTO));
  		console.info(' 7 - 1 ='+ calculadora(7,0,DECREMENTO));
  		console.info(' ES_PAR ='+ calculadora(7,0,ES_PAR)) 
//  		// llamada a la funcion
//  		sumar();
 		
 		
//  		console.info('El \'resultado\' : \n \t es igual a ' + sumar(1, 3) );
 		</script>
 		
 		<br><br>
 		<footer>
 			<br><br>
 			Capitulo 11; pagina263
 		
 		</footer>
 	
 	</article>
 
 
 </section>
 
 
 <jsp:include page="../../plantillas/foot.jsp"></jsp:include> 