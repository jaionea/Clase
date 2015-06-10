
<jsp:include page="../../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>



<section >
	<article>
		<header>

		<h3> Tecnicas Avanzadas Sprite</h3>
		<p>Una imagen de sprite es un conjunto de imagenes agrupadas en una sola imagen </p>
		</header>
		
		<style>
		
			#sprite li {
				border: 1px solid #000;
				padding: 15px 50px;
				background: url('img/sprite.png') no-repeat 0 0;
				/* display: block; */
				/* list-style:none; */
						}

			#sprite .pacman {
				background: url('img/sprite.png') no-repeat 0 -50px;
				}

			#sprite .fantasma {
				background: url('img/sprite.png') no-repeat 0 -100px;
				}

			
				
		
		</style>


		<div class="cnt_article">
			<ul id="sprite">
				<li class="pacman">Pacman</li>
				<li class="fantasma">Fantasma</li>
				<li class="robot">Robot</li>
			</ul>


		</div>
<footer> 

Campus

</footer>



</article>



</section>





<jsp:include page="/plantillas/foot.jsp"></jsp:include>
	
 
</body>
</html>










