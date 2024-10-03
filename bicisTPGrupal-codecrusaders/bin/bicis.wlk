import accesorios.*

class Bicis{
	var property rodado = null
	var property largo = null
	var property marca = null
	const accesorios = []
	
	
	method agregarAccesorio(accesorio){
		accesorios.add(accesorio)
	} 
	
	method altura() = (self.rodado()*2.5) + 15
	
	method velocidadDeCrucero() = self.rodado() + if(self.largo()>120) 6 else 2
	
	method carga() = accesorios.sum({x=>x.carga()})
	
	method peso() = (self.rodado() / 2) + accesorios.sum({x=>x.peso()})
	
	method tieneLuz() = accesorios.any({x=>x.esLuminoso()})
	
	method cantAccesoriosLivianos() = accesorios.count({x=>x.peso() < 1})
	
	method cantDeAccesorios() = accesorios.size()

}

	
	
