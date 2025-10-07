/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	
	method taquito(){
			//self.validarTaquito()
			pelota.retrocederDoslugares()
		
			
	}

	method validarTaquito(){
		if(not (pelota.position.x() == position.x() && pelota.position().y == position.y() )){
			game.say(self, "La pelota no está conmigo!")
		}
	}


}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

	method retrocederDoslugares() {
		position = game.at(0.max(position.x() - 2), position.y())
	  
	}

}
