import objetos.*
import personas.*

object bolichito {
	
	var objetoVidriera = remera
	var objetoMostrador = cajita
	
	method esBrillante(){
		return objetoVidriera.material().esBrillante() and 
		objetoMostrador.material().esBrillante()
	}
	
	method esMonocromatico(){
		return objetoVidriera.color() == objetoMostrador.color()
	}
	
	method estaDesequilibrado(){
		return objetoMostrador.peso() > objetoVidriera.peso()
	}
	
	method tieneAlgoDeColor(color){
		return ( (objetoVidriera.color() == color) or (objetoMostrador.color() == color) )
	}
	
	method puedeMejorar(){
		return self.estaDesequilibrado() or self.esMonocromatico()
	}
	
	method puedeOfrecerleAlgoA(persona){
		return persona.leGusta(objetoVidriera) or persona.leGusta(objetoMostrador)
	}
	
	method cambiarObjetoVidriera(nuevoObjeto){
		objetoVidriera = nuevoObjeto
	}
	
	method cambiarObjetoMostrador(nuevoObjeto){
		objetoMostrador = nuevoObjeto
	}
}

