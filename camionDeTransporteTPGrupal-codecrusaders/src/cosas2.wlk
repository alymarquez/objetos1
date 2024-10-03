object knightRider {
	method peso() = 500
	
	method peligrosidad() = 10
	
	method cantBultos() = 1 
	
	method consecuenciaDeCarga(){}
}

object bumblebee {
	var esAuto = true

    method transformar(){
        esAuto = !esAuto
    }

    method peso() = 800

    method peligrosidad() = if(esAuto) 15 else 30
    
    method cantBultos() = 2
    
    method consecuenciaDeCarga(){ esAuto = false}
}

object paqueteLadrillos{
	var ladrillos
	
	method cantLadrillos(cantidad){
		ladrillos = cantidad
	}
	
	method ladrillos() = ladrillos
	
	method peso() = ladrillos * 2
	
	method peligrosidad() = 1
	
	method cantBultos() = if (self.ladrillos().between(0, 100)) 1 else if (self.ladrillos().between(101, 300)) 2 else 3
	
	method consecuenciaDeCarga(){ ladrillos += 12 }
}


object arena {
	var peso
	
	method asignarPeso(valor){
		peso = valor
	}
	
	method peso() = peso
	
	method peligrosidad() = 1
	
	method cantBultos() = 1
	
	method consecuenciaDeCarga(){ peso += 20 }
}

object bateriaAntiarea {
	var tieneMisiles = false
	
	method cambiarMisiles(){
		return tieneMisiles != tieneMisiles
	}
	
	method tieneMisiles() = tieneMisiles
	
	method peso() = if (tieneMisiles) 300 else 200
	
	method peligrosidad() = if (tieneMisiles) 100 else 0
	
	method cantBultos() = if (tieneMisiles) 2 else 1
	
	method consecuenciaDeCarga(){ tieneMisiles = true }
	
}

object contenedor {
	const contenido = []
	
	method agregarObjeto(objeto){
		contenido.add(objeto)
	}
	method contenido() = contenido
	method peso() = 100 + contenido.map({ x => x.peso() }).sum()
	
	method peligrosidad() = if (contenido.size() >= 1) contenido.map({ x => x.peligrosidad() }).max() else 0
	
	method cantBultos() = contenido.sum({ x => x.cantBultos()}) + 1
	
	method consecuenciaDeCarga() = contenido.forEach({ x => x.consecuenciaDeCarga() })
}

/* 
object contenedor {
	var cosasCargadas = []
	var peso = 100
	
	method cargar(cosa) {
		cosasCargadas.add(cosa)
		peso = peso + cosa.peso()
	}
	
	method peso() = peso
	method peligrosidad() = cosasCargadas.sum( {cosa => cosa.peligrosidad() } )
	method cantBultos() = cosasCargadas.sum( {cosa => cosa.cantBultos() } ) + 1
	method consecuenciaDeCarga(){ cosasCargadas.forEach({ cosa => cosa.consecuenciaDeCarga() }) }
}
*/
object residuosRadioactivos {
	var peso
	
	method asignarPeso(valor){
		peso = valor
	}
	
	method peso() = peso
	
	method peligrosidad() = 200
	
	method cantBultos() = 1 
	
	method consecuenciaDeCarga(){ peso += 15 }
}

object embalajeSeguridad {
	var envolverA
	
	method envolver(objeto){
		envolverA = objeto
	}
	
	method peso() = envolverA.peso()
	
	method peligrosidad() = envolverA.peso() / 2
	
	method cantBultos() = 2
	
	method consecuenciaDeCarga(){}
}

