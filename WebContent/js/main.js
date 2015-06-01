/*
	Pimer JavaScript para trastera con el 

	version:  1.0
	author:   Ander Uraga Real
	date: 	  20150518


*/


function init(){
	//alert( 'onload body ok');
	/*
	console.info ('Muetsrame algo que me sirva o sea interesante');
	console.debug('Es una traza para depurar o ver volares de variables');
	console.error('Mensaje para cuando falla alguna cosa');
	*/
	
}

/**
  genera un numero aleatorio entre el 1 y 15	
  lo muestra en el <label> con id='afortunado'
*/
function obtener_ganador(){
	console.debug('click ok');
	
	var lb_afortunado = document.getElementById('afortunado');
	var num_aleatorio = Math.floor(Math.random() * 15) + 1;
	
	lb_afortunado.innerHTML = num_aleatorio;
	
	//Como hay un sitio sin ocupar a partir del 14 sumamos 14
	
	if(	num_aleatorio>=14){
		nume_aleatorio++;
	}
	
}

 











