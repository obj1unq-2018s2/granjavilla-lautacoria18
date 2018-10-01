import wollok.game.*
import plantas.*

object hector {
	//necesita posicion e imagen para poder estar en el tablero
	
	var property posicion = game.at(2,2)
	method imagen() = "player.png"
	
	// metodo que reacciona ante una tecla
	method plantaMaiz() {
		
		game.say(self, "mirame plantado maiz")
		game.addVisualIn(new Maiz(), posicion.clone())
	}
	
		method plantaTrigo() {
		
		
		game.say(self, "mirame plantado trigo")
		game.addVisualIn(new Trigo(), posicion.clone())
		
	}
		method plantaTomaco() {
		

		game.say(self, "mirame plantado tomaco")
		game.addVisualIn(new Tomaco(), posicion.clone())
	}
	
	
	
	method regar(algo){
		algo.remove(self)
		algo.forEach({planta => planta.regame()})
		
		if (algo.isEmpty()) game.say(self, "no tengo nada para regar")
	
	}
			
		
	
		
	
}
