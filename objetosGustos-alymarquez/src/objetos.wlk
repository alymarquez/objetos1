object remera{
	
	method peso() = 800
	
	method color() = rojo
	
	method material() = lino
	
}

object pelota {
	
	method peso() = 1300
	
	method color() = pardo
	
	method material() = cuero
	
}

object biblioteca {
	
	method peso() = 8000
	
	method color() = verde
	
	method material() = madera
	
}

object munieco {
	
	var peso = 0
	
	method peso() = peso
	
	method color() = celeste
	
	method material() = vidrio
	
	method setPeso(pesoNuevo){
		peso = pesoNuevo
	}
	
}

object placa {
	
	var peso = 0
	var color = rojo
	
	method peso() = peso
	
	method setPeso(pesoNuevo){
		peso = pesoNuevo
	}
	
	method color() = color
	
	method setColor(colorNuevo){
		color = colorNuevo
	}
	
	method material() = cobre
	
}

object arito {
	method peso() = 180
	
	method color() = celeste
	
	method material() = cobre
}

object banquito {
	var color = naranja
	
	method peso() = 1700
	
	method color() = color
	
	method setColor(colorNuevo){
		color = colorNuevo
	}
	
	method material() = madera
}

object cajita {
	var objetoDentro = 0
	
	method peso() = 400 + objetoDentro
	
	method color() = rojo
	
	method material() = cobre
	
	method meterObjeto(objeto){
		objetoDentro = objeto.peso()
	}
	
}

object rojo {
	
	method esFuerte() = true
	
}

object verde {
	
	method esFuerte() = true
}

object celeste {
	
	method esFuerte() = false
}

object pardo {
	
	method esFuerte() = false
}

object naranja {
	
	method esFuerte() = true
}

object cobre {
	
	method esBrillante() = true
}

object vidrio {
	
	method esBrillante() = true
}

object lino {
	
	method esBrillante() = false
}

object madera {
	
	method esBrillante() = false
}

object cuero {
	
	method esBrillante() = false
}