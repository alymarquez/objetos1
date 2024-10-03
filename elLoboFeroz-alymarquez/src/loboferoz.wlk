
object elLoboFeroz {
	
	var peso = 10
	
	method estaSaludable() {
		return peso.between(20, 150)
	}
	
	method aumentaPeso(pesoAumentar){
		peso += pesoAumentar
	}
	
	method disminuyePeso(pesoADisminuir){
		peso = 0.max(peso - pesoADisminuir)
	}
	
	method sufreCrisis(){
		peso = 10
	}
	
	method comerAlgo(comida){
		peso += comida.peso() * 0.1
	}
	
	method correr(){
		peso = 0.max(peso - 1)
	}
	
	method pesoActual(){
		return peso
	}
	
	method soplarCasa(tipoDeCasa){
		peso -= if (peso >= tipoDeCasa.resistencia()) tipoDeCasa.resistencia() else 0
	}
}

// ejercicio 1 - caperucita

object caperucita {
	method peso() = (60 + canasta.peso())
	
}

object canasta {
	
	var manzanas = 6
	
	method pierdeManzana(){
		manzanas -= 1
	}
	
	method agregaManzana(){
		manzanas += 1
	}
	
	method peso(){
		return manzanas * manzana.peso()
	}
}

object manzana {
	method peso() = 0.2
}

object abuelita {
	method peso() = 50

}

object cazador {
	method peso() = 90
	
	method dispararLobo(){
		elLoboFeroz.sufreCrisis()
	}
}


// ejercicio 2 - chanchitos

object chanchito {
	method peso() = 20
	
	method cantDeChanchitos(cantidad) = self.peso() * cantidad
}

object casaDePaja {
	method resistencia() = 0 + chanchito.cantDeChanchitos(1)
	
}

object casaDeMadera {
	method resistencia() = 5 + chanchito.cantDeChanchitos(2)
}

object casaDeLadrillos {
	method resistencia() = (2 * ladrillos.cantDeLadrillos()) + chanchito.cantDeChanchitos(3)
}

object ladrillos{
	method cantDeLadrillos() = 5
}

