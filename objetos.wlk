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

	method irASacarLateral(){
		self.validarQueNoTieneLaPelota()
		position = pelota.position()
	}

	method validarQueNoTieneLaPelota(){
		if(self.position() == pelota.position()){
			self.error("No se fue la pelota!")
		}
	}
	
	method taquito(){
			
			self.validarTaquito()
			pelota.retrocederDoslugares()	
			
	}

	method validarTaquito(){
		if(pelota.position() != position){

			self.error("Lionel no esta con la pelota!!")
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
