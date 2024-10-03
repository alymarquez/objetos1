import cerveza.*
import personas.*


class Carpas{
	var property limiteGente
	var property bandaTradicional
	const property marcaQueVende
	var property recargo
	const personas = []
	
	method entraPersona(persona){
		if ( self.dejaIngresar(persona)){
			personas.add(persona)
		} else {
			throw new Exception(message = "Limite de personas alcanzado")
		}
		
	}
	
	method personas() = personas
	
	method dejaIngresar(persona) = 
		personas.size() < limiteGente and not persona.estaEbria()
	
	method servirJarra(persona, litros){
		if (persona.contains(persona)){
			const jarra = new Jarras(capacidadLitros = litros, marca = marcaQueVende, carpa = self)
			persona.comprarJarra(jarra)
		} else{
			throw new Exception(message = "La persona no se encuentra en la carpa")
		}
	}
	
	method ebriosEmpedernidos() = personas.filter({ x => x.jarrasCompradas().all({jarra => jarra.capacidadLitros() > 1})})
	
	method esHomogenea() = personas.map({ x => x.pais()}).asSet().size() == 1
	
	method personasSinServir() = personas.filter({ x => not x.carpasDondeTomo().contains(self)})
}


object recargoFijo{
	method recargo(carpa) = 1.30
}

object recargoPorCantidad{
	method recargo(carpa) =
		if(carpa.personas().size() >= carpa.limiteGente()/ 2) 1.40 else 1.25
}

object recargoPorEbriedad{
	method recargo(carpa) = 
		if( carpa.personas().filter({x => x.estaEbria()}).size() >= carpa.limiteGente() * 0.75 ) 1.50 else 1.20
}
