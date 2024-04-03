/** First Wollok example */
object contador {

	var valor = 0
	var comando = ""

	method valorActual(nuevoValor){
		comando = "actualizacion"
		valor = nuevoValor
	}
	
	method valorActual(){
		return valor
	}
	
	method inc(){
		comando = "incremento"
		valor += 1
	}
	
	method dec(){
		comando = "decremento"
		valor -= 1
	}
	
	method reset(){
		comando = "reset"
		valor = 0
	}
	
	method ultimoComando(){
		return comando
	}
	
}
