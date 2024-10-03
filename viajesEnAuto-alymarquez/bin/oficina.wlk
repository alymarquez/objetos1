import remiseras.*
import clientes.*

// oficina
object oficina {
	var primeraRemisera 
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2){
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras(){
		self.asignarRemiseras(segundaRemisera,primeraRemisera)
	}

	method remiseraElegidaParaViaje(cliente, km){
		const precioPrimera = primeraRemisera.precioViaje(cliente, km)
		const precioSegunda = segundaRemisera.precioViaje(cliente, km) 
		
		return if (precioSegunda  < precioPrimera  - 30) segundaRemisera else primeraRemisera 
	}
	
	method primeraRemisera() = primeraRemisera
	
	method segundaRemisera() = segundaRemisera
}

