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

	method levantarla(){
		self.validarMessiEstaEnMismaPosicion()
		pelota.subir()
    	game.schedule(2000, {pelota.bajar()})

	}


	method validarMessiEstaEnMismaPosicion(){
		if(not (position.x() == pelota.position.x() && position.y() == pelota.position.y()))
			self.error("NO ESTA MESSI CON LA PELOTA!!!!!!!!!!!!!!!!!")
	}	
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	

	method subir(){
		self.position(game.at(position.x(), position.y() + 1))
	}
		method bajar(){
		self.position( game.at(position.x(), position.y() - 1) )
	}

}
