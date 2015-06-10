<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>QUnit Example</title>
  <link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
</head>
<body>
  <div id="qunit"></div>
  <div id="qunit-fixture"></div>
  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  
   <script src="../../js/utilidades.js"></script>
  
  <script>
  
  	  QUnit.test( "hello test", function( assert ) {
	  assert.ok( 1 == "1", "Passed!" );
	});
  	  

  	  QUnit.test( "cine(diasemana, edad)", function( assert ) {
	  assert.ok( cine('lunes',34) == 2 , "lunes < 35 = 2 €" );
	  assert.ok( cine('lunes',35) == 5 , "lunes >= 35 = 5 €" );
	  assert.ok( cine('lunes',36) == 5 , "lunes >= 35 = 5 €" );
	  
	  assert.ok( cine('martes',24) == 2 , "martes < 25, 24 = 2 €" );
	  assert.ok( cine('martes',25) == 2 , "martes <= 25, 25 = 2 €" );
	  assert.ok( cine('martes',26) == 5 , "martes > 25,26 = 5 €" );
	  assert.ok( cine('martes',56) == 7 , "martes > 50,56 = 7 €" );
	  
	  assert.ok( cine('miercoles',17) == 3 , "miercoles < 18,17 = 3 €" );
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
