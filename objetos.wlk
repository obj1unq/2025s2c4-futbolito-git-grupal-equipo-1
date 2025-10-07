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
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	

	method levantarla(){
		position = game.at(position.x(), position.y() + 1)
    	game.schedule(2000, {game.say(self, "¡Hola!")})
		position = game.at(position.x(), position.y() - 1)
		self.validarMessiEstaEnMismaPosicion()

	}


	method validarMessiEstaEnMismaPosicion(){
		if(not (position.x() == lionel.position.x() && position.y() == lionel.position.y()))
			self.error("NO ESTA MESSI CON LA PELOTA!!!!!!!!!!!!!!!!!")
	}
}
