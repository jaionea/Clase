<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Test para utilidades.js</title>
  <link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
</head>
<body>
  <div id="qunit"></div>
  <div id="qunit-fixture"></div>
  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  
   <script src="../../js/utilidades.js"></script>
  
  <script>
  
  	QUnit.test( "Date -Fechas", function( assert ) {
  		
  		var fecha = new Date (2015,5,15);
  		 
  		 assert.ok(convertirFecha(fecha, CORTO)=='15/06/2015' );
  		 assert.ok(convertirFecha(fecha, LARGO)==' el 15 de junio del 2015' );
  		 assert.ok(convertirFecha(fecha, 'formato no valido')== null, 'formato no valido' );
  		 assert.ok(convertirFecha(null, CORTO)== null, 'formato no valido' );
  		 assert.ok(convertirFecha(undefined, CORTO)== null, 'formato no valido' );
  		 assert.ok(convertirFecha('45/ff/2020', CORTO)== null, 'formato no valido' );
  		
  	});
  
  
  
  
  
  
  	  QUnit.test( "Funciones predefinidas", function( assert ) {
	  assert.ok( escape('Hola Mundo') == 'Hola%20Mundo', "'Hola Mundo' escapado" );
	  assert.ok( escape('Hóla Mundo') == 'H%F3la%20Mundo', "'Hóla Mundo' escapado" );
	  assert.ok( unescape('H%F3la%20Mundo') == 'Hóla Mundo', "'Hóla Mundo' escapado" );
	  assert.ok( (10 +'1') == '101', "Sin parseInt 10 +\"1\"=101" );
	  assert.ok( (10 + parseInt("1")) == 11, "Con parseInt 10 +\"1\"=11" );
	  assert.ok( isNaN("123ab") , "123ab No es numero" );
	  assert.ok( !isNaN("123") , "123 es numero" );
  	});
	  
	  
	  
	  QUnit.test( "Propiedades Array", function( assert ) {
	  var jonWaine= new Array("Jon","Wayne",45);
	  var pelicula= new Array("el bueno el feo y el malo",1973,"NPI");
	  var vectorFinal=jonWaine.concat(pelicula);
	  
	  assert.ok( jonWaine[0]=="Jon" ,"Posicion 0 Jon" );
	  assert.ok( jonWaine[1]=="Wayne" ,"Posicion 1 Wayne" );
	  assert.ok( jonWaine[2]==45 ,"Posicion 2 45" );
	  assert.ok( jonWaine.length == 3 ,"Longitud del array ==3" );
	  
	  assert.ok( vectorFinal[0]=="Jon" ,"Posicion 0 Jon" );
	  assert.ok(  vectorFinal[1]=="Wayne" ,"Posicion 1 Wayne" );
	  assert.ok(  vectorFinal[2]== 45 ,"Posicion 2  45" );
	  assert.ok(  vectorFinal[3]=="el bueno el feo y el malo" ,"Posicion 3 el bueno el feo y el malo" );
	  assert.ok(  vectorFinal[4]==1973 ,"Posicion 4 1973" );
	  assert.ok(  vectorFinal[5]=="NPI" ,"Posicion 5 NPI" );
	  assert.ok( vectorFinal.length == 6 ,"Longitud del vectorFinal ==6" );
	  
	 // document.write(vectorFinal.join("#"))
	 //document.write(vectorFinal.reverse())
	 //document.write(vectorFinal.sort());
	 
	  
	  assert.ok(vectorFinal.join("#")=="Jon#Wayne#45#el bueno el feo y el malo#1973#NPI","Jon#Wayne#45#el bueno el feo y el malo#1973#NPI");
	  assert.ok(vectorFinal.reverse()=="NPI,1973,el bueno el feo y el malo,45,Wayne,Jon","NPI,1973,el bueno el feo y el malo,45,Wayne,Jon");
	  assert.ok(vectorFinal.sort()=="1973,45,Jon,NPI,Wayne,el bueno el feo y el malo","1973,45,Jon,NPI,Wayne,el bueno el feo y el malo");
  	  
  	  var vector1=new Array(-5,5,3,1,0);
  	  vector1=vector1.sort();
  	//document.write(vector1.sort());
  	
  	assert.ok(vector1[0]==-5,"Posicion 0 esta -5");
  	assert.ok(vector1[1]==0,"Posicion 0 esta 0");
  	assert.ok(vector1[2]==1,"Posicion 0 esta 1");
  	assert.ok(vector1[3]==3,"Posicion 0 esta 3");
  	assert.ok(vector1[4]==5,"Posicion 0 esta 5");
  		
  	var vector2=new Array("b","a","A","h");
    vector2=vector2.sort();
    //document.write(vector2.sort());
    	
    assert.ok(vector2[0]=="A","Posicion 0 esta A");
    assert.ok(vector2[1]=="a","Posicion 0 esta a");
    assert.ok(vector2[2]=="b","Posicion 0 esta b");
    assert.ok(vector2[3]=="h","Posicion 0 esta h");
    		
  		
  		
  	  });
  	  

  	  QUnit.test( "cine(diasemana, edad)", function( assert ) {
	  assert.ok( cine('lunes',34) == 2 , "lunes < 35, 34 = 2 €" );
	  assert.ok( cine('lunes',35) == 2 , "lunes >= 35, 35 = 2 €" );
	  assert.ok( cine('lunes',36) == 5 , "lunes > 35, 36 = 5 €" );
	  
	  assert.ok( cine('martes',24) == 2 , "martes < 25, 24 = 2 €" );
	  assert.ok( cine('martes',25) == 2 , "martes <= 25, 25 = 2 €" );
	  assert.ok( cine('martes',26) == 5 , "martes > 25, 26 = 5 €" );
	  assert.ok( cine('martes',50) == 5 , "martes <= 50, 50 = 5 €" );
	  assert.ok( cine('martes',51) == 7 , "martes > 50, 51 = 7 €" );
	  
	  assert.ok( cine('miercoles',17) == 3 , "miercoles <= 18, 17 = 3 €" );
	  assert.ok( cine('miercoles',18) == 3 , "miercoles <= 18, 18 = 3 €" );
	  assert.ok( cine('miercoles',19) == 5 , "miercoles > 18, 19 = 5 €" );
	  assert.ok( cine('miercoles',49) == 5 , "miercoles <= 50, 49 = 5 €" );
	  assert.ok( cine('miercoles',50) == 5 , "miercoles <= 50, 50 = 5 €" );
	  assert.ok( cine('miercoles',51) == 8 , "miercoles > 50, 51 = 8 €" );
	  
	  assert.ok( cine('jueves',18) == 5 , "jueves <= 18, 18 = 5 €" );
	  assert.ok( cine('jueves',19) == 10 , "jueves < 18, 19 = 10 €" );
	  
	  assert.ok( cine('viernes',18) == 10 , "Es viernes precio = 10 €" );
	  
	  assert.ok( cine('sabado',18) == 10 , "Es sabado precio = 10 €" );
	  
	  assert.ok( cine('domingo',18) == 10 , "Es domingo precio = 10 €" );
	  
	  
	  
	  
	});
  	  
  	QUnit.test( "es_par(numero)", function( assert ) {
  	  assert.ok(es_par(0) , "0  ES PAR!" );
  	  assert.ok(es_par(2) , "2 ES PAR!" );
  	  assert.ok(!es_par(3) , "3 NO ES PAR!" );
  	  assert.ok(!es_par(null) , " null NO ES PAR!" );
  	  assert.ok(!es_par(undefined) , "undefined NO ES PAR!" );
  	  assert.ok(es_par(-2) , "-2 ES PAR!" );
  	  assert.ok(!es_par(-3) , "-3 NO ES PAR!" );
  	  assert.ok(es_par(2.0) , "2.0  ES PAR!" );
  	  assert.ok(!es_par(2.1) , "2.1 NO ES PAR!" );
	  	
  	});
  
  </script>
  
  <script src="tests.js"></script>
</body>
</html>
