import cosas.*

object camion {
	const cosas = []
	
	method peso() = 1000
	
	method cosasCargadas() = cosas
	
	method cargar(cosa){
		cosas.add(cosa)
	}
	
	method descargar(cosa){
		cosas.remove(cosa)
	}
	
	method todoPesoPar() = 
		cosas.all({x => x.peso().even()})
	
	method hayAlgunoQuePesa(peso) = 
		cosas.any({ x => x.peso() == peso})
	
	method elDeNivel(nivel) = 
		cosas.find({ x => x.peligrosidad() == nivel })
	
	method pesoTotal() = 
		cosas.sum({x => x.peso()}) + self.peso()
	
	method excedidoDePeso() = self.pesoTotal() >= 2500
	
	method objetosQueSuperanPeligrosidad(nivel) = 
		cosas.filter({ x => x.peligrosidad() > nivel})
	
	method objetosMasPeligrososQue(cosa) = 
		cosas.filter({ x => x.peligrosidad() > cosa.peligrosidad()})
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) = 
		(not self.excedidoDePeso()) and (self.objetosQueSuperanPeligrosidad(nivelMaximoPeligrosidad).size() == 0)
	
	method tieneAlgoQuePesaEntre(min, max) = 
		cosas.find({ x => x.peso().between(min, max)})
	
	method cosaMasPesada() = 
		cosas.max({ x => x.peso()})
	
	method pesos() = 
		cosas.map({x => x.peso()})
}