object calculadora {
	
	var valor = 0
	
	method  cargar(numero){
		valor = numero
	}
	
	method  sumar(numero){
		valor = valor + numero
	}
	
	method restar(numero){
		valor = valor - numero
	}
	
	method  multiplicar(numero){
		valor = valor * numero
	}
	
	method valorActual(){
		return valor
	}
	
}
