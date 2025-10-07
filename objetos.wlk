/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	var property camiseta = "titular" //property para test

	method image() {
		return "lionel-" + camiseta + ".png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method validarCambiarCamiseta(){
		if (not self.paradoEnBorde()){
			self.error("No está en el borde, entonces no puede cambiar la camista")
		} else {
			self.cambiarCamiseta()
		}
	}

	method cambiarCamiseta() {
	  if (camiseta == "titular"){
		camiseta = "suplente"
	  } else {
		camiseta = "titular"
	  }
	}
	method paradoEnBorde() = position.x() == 0
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
