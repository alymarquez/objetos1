object knightRider {
	method peso() = 500
	
	method peligrosidad() = 10
}

object bumblebee {
	var esAuto = true

    method transformar(){
        esAuto = !esAuto
    }

    method peso() = 800

    method peligrosidad() = if(esAuto) 15 else 30
}

object paqueteLadrillos{
	var ladrillos
	
	method cantLadrillos(cantidad){
		ladrillos = cantidad
	}
	
	method ladrillos() = ladrillos
	
	method peso() = ladrillos * 2
	
	method peligrosidad() = 1
}


object arena {
	var peso
	
	method asignarPeso(valor){
		peso = valor
	}
	
	method peso() = peso
	
	method peligrosidad() = 1
}

object bateriaAntiarea {
	var tieneMisiles = true
	
	method cambiarMisiles(){
		return tieneMisiles != tieneMisiles
	}
	
	method peso() = if (tieneMisiles) 300 else 200
	
	method peligrosidad() = if (tieneMisiles) 100 else 0
}

object contenedor {
	const contenido = []
	
	method agregarObjeto(objeto){
		contenido.add(objeto)
	}
	method contenido() = contenido
	method peso() = 100 + contenido.map({ x => x.peso() }).sum()
	
	method peligrosidad() = if (contenido.size() >= 1) contenido.map({ x => x.peligrosidad() }).max() else 0
}

object residuosRadioactivos {
	var peso
	
	method asignarPeso(valor){
		peso = valor
	}
	
	method peso() = peso
	
	method peligrosidad() = 200
}

object embalajeSeguridad {
	var envolverA
	
	method envolver(objeto){
		envolverA = objeto
	}
	
	method peso() = envolverA.peso()
	
	method peligrosidad() = envolverA.peso() / 2
}
