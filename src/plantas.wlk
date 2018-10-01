import wollok.game.*
import objects.*
class Maiz {
	var property imagen = "corn_baby.png"

	
	method regame() {
		
		//if (imagen = "corn_baby.png")  imagen = "corn_adult.png"
		self.imagen("corn_adult.png")
	}
	
	
}

class Trigo {

	var property imagen = "wheat_0.png"
	
		method regame() {
		
		if (self.imagen() =="wheat_0.png") self.imagen("wheat_1.png")
		else if (self.imagen() =="wheat_1.png") self.imagen("wheat_2.png")
		else if (self.imagen() =="wheat_2.png") self.imagen("wheat_3.png")
		else if (self.imagen() =="wheat_3.png") self.imagen("wheat_0.png")
	}
	
}


class Tomaco {

	method imagen() ="tomaco.png"
	
	method regame() {
		
		game.removeVisual(self)
		game.addVisualIn(self, hector.posicion().up(1))
		
		
	}
	
	
}
