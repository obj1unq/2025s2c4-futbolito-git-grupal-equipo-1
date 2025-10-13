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
	
	method patear() {
		self.validarPuedePatear()
		if((pelota.position().x() + 3) <= (game.width()-1)){
			pelota.position(position.right(3))
		}else{
			pelota.position(game.at(game.width()-1, pelota.position().y()))
		}
	}

	method puedePatear() = self.position().x() == pelota.position().x()
	

	method validarPuedePatear() {
		if(not self.puedePatear()){
			self.error("No hay pelota maquina")
		}
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
