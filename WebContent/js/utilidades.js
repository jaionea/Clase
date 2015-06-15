/*
Funciones para utilizar en todo el proyecto
*/




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
				
 		
				
	/**
	 * Funcion para determinar si el parametro pasado es par o impar
	 * @param numero
	 * @return true si es par, false si es impar
	 */
	 
 			function es_par(numero){
 				
 				result= false;
 				


		 		if (numero != null) {
		 			if (numero % 2 == 0) {
		 				result = true;
		 				}
		 			}
 					
 				return result;
 			}	
 			
 			/**
 			 * convierte fecha a formato español
 			 * @param date objeto tipo Date con la fecha a covertir
 			 * @param formato CORTO: 'dd/mm/aaaa'; LARGO: '1 de enero del 2016'
 			 * @returns {String} cadena de texto con la fecha convertida, si falla retorna null
 			 */
 			
 			// Formato posibles para las fechas
 			const CORTO = 'corto';
 			const LARGO = 'largo';
 			
 			
 			function convertirFecha (date , formato){
 				
 				var resul=""; 
 				
 				var dia = date.getDate();
 				var mes = (date.getMonth()+1);
 				var año = date.getFullYear();
 				
 				
 				
 				
 					
 				switch(formato){
 				
 				case CORTO:
 					
 					resul= (dia+"/"+mes+"/"+año);
 					break;
 					
 				case LARGO:
 				
 					var meses= new Array("enero","febrero","marzo","abril","mayo","junio","julio","agosto","agosto","septiempbre","octubre","noviembre","diciembre");
 					meses[mes-1];
 					
 					resul= ("El "+dia+" de "+meses[mes-1]+" del "+año);	
 					break;
 				
 				default: 
 					resul=null;
 					
 				}
 						
 					
 				return resul;
 		}
 			
 			