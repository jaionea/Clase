 <jsp:include page="../../plantillas/head.jsp"></jsp:include> 
 <jsp:include page="../../plantillas/nav.jsp"></jsp:include> 

 <section>
 
 
 <h2>Java Script</h2>
 
 	<article>
 	
 		<header>
 		
 			<h1>Introduccion</h1>
 			
 			
 		</header>
 	 	
 		
 		<div class="cnt_article">
 		
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
  		console.info(' 7 + 1 ='+ calculadora(7,null,INCREMENTO));
  		console.info(' 7 - 1 ='+ calculadora(7,null,DECREMENTO));
  		console.info(' ES_PAR ='+ calculadora(7,null,ES_PAR)) 
//  		// llamada a la funcion
//  		sumar();
 		
 		
//  		console.info('El \'resultado\' : \n \t es igual a ' + sumar(1, 3) );
 		
 		
 		/** 
 			funcion para comprobar si una letra es vocal
 			@dato1:letra comprobar
 			@return:true si es vocal, false en caso contrario
 		*/
 		
 		
 		function esvocal(dato1){
 			
 			var vocal=false;
 			
 			//minusculas vocal
 			
//  			vocal=vocal.toLowerCase();
 			
 			switch(dato1){
 			
 			case 'a': 				
 			case 'e': 				
 			case 'i': 				
			case 'o':				
			case 'u':				
 			case 'A':				
 			case 'E':				
 			case 'I':				
 			case 'O':				
 			case 'U':				
				vocal=true;
				break;
 			
			/*
				sobra default porque hemos inicializado en false
			default: vocal=false;
 			*/
 			}
 			
 			return vocal;
 			
 		
 		}
 		
 		var datos=['a','e','A',13,null,undefined,0.5,'and','n','ñ'];
 		
 		for (i =0; i<datos.length; i++){
 			console.debug(datos[i] +' es vocal =  '+ esvocal(datos[i]));
 		}
 		
 		
 		
 		 
//  		console.info('Es vocal\n')
// 	  	console.info('a es vocal =  '+ esvocal('b'));
 		
 		
 		/*************************
 			Cine de Almendralejo
 		*************************/
 		
 		/**
 			Calcula el precio de la entrada
 			@param dia:Dia de la semana escrito en minusculas, ej: ['lunes', 'martes'..'domingo']
 			@param edad: edad de la persona, formato numero entero
 			@return precio en euros
 			
 		*/
 		
				function cine(diasemana, edad) {

					var precio = null;
					
					if(edad>0 && edad<130){
					
						switch (diasemana) {
						
						
	
							case 'lunes':
								if (edad <= 35) {
									precio = 2;
								} else {
									precio = 5;
								}
		
								break;
		
							case 'martes':
								if (edad <= 25) {
									precio = 2;
								} else if ((edad > 25) && (edad <= 50)) {
									precio = 5;
								} else {
									precio = 7;
								}
		
								break;
		
							case 'miercoles':
								if (edad <= 18) {
									precio = 3;
								} else if ((edad > 18) && (edad <= 50)) {
									precio = 5;
								} else {
									precio = 8;
								}
		
								break;
		
							case 'jueves':
								if (edad <= 18) {
									precio = 5;
								} else {
									precio = 10;
								}
		
								break;
								
							case 'viernes':
								
									precio = 10;
		
								break;
							case 'sabado':
								
									precio = 10;
								
		
								break;
							case 'domingo':
								
									precio = 10;
								
		
								break;
		
							default:
								precio = null;
							console.info('dia incorrecto')
						
						}//end switch
					
					}else{console.info('Edad incorrecta')}
					
					return precio;

				}
 			
 				
 			
 				

				console.info('CINE\n')
				console.info('EL precio de la entrada =  '+ cine('miercoles', 25) +' \u20AC');
				//console.info('lunes < 35 años = 2  '+ cine('lunes', 34)==2' \u20AC');
				</script>
 		
 		
 		<footer>
 			
 			Capitulo 11; pagina263
 		
 		</footer>
 	
 	</article>
 
 
 </section>
 
 
 <jsp:include page="../../plantillas/foot.jsp"></jsp:include> 