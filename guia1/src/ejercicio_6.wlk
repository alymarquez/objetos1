object tecladoEspingarda {
	
	var numero = ""
	var cantidadLlamadas = 0
	
	method  agregarDigito(digito){
		numero += digito
	}
	
	method  llamar(){
		cantidadLlamadas += 1
		numero = ""
	}
	
	method numeroIngresado(){
		return numero
	}
	
	method  esNumeroValido(){
		return (numero.size() == 5) or ((numero.size() == 5) and (numero.startsWith("15")))
	}
	
	method  borrarUltimoDigito(){
		numero = numero.substring(0,numero.size() - 1)
		return numero
	}
	
	method cantLlamadas(){
		return cantidadLlamadas
	}
}
