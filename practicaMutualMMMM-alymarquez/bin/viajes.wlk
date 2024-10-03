class Actividad{
	var property idiomas = []
	
	method dias()	
	
	method implicaEsfuerzo()
	
	method sirveParaBroncearse()
	
	method esInteresante() = idiomas.size() > 1
	
	method recomendadaParaSocio(socio)
}



class Viajes inherits Actividad{
	
	override method recomendadaParaSocio(socio) =
		self.esInteresante() and socio.leAtraeActividad(self) and not socio.actividades().contains(self)
	
}


class ViajesPlata inherits Viajes{
	var property largo
	
	override method dias() = largo / 500
	
	override method implicaEsfuerzo() = largo > 1200
	
	override method sirveParaBroncearse() = true
}


class ExcursionesCiudad inherits Viajes{
	var atraccionesAVisitar
	
	override method dias() = atraccionesAVisitar / 2
	
	override method implicaEsfuerzo() = atraccionesAVisitar.between(5, 8)
	
	override method sirveParaBroncearse() = false
	
	override method esInteresante() = super() or atraccionesAVisitar == 5
}


class ExcursionesCiudadTropical inherits ExcursionesCiudad{
	
	override method dias() = super() + 1

	override method sirveParaBroncearse() = true
}


class SalidaTrekking inherits Viajes{
	var kmARecorrer
	var diasDeSol
	
	override method dias()= kmARecorrer / 50
	
	override method implicaEsfuerzo() = kmARecorrer > 80
	
	override method sirveParaBroncearse() = 
		diasDeSol > 200 or (diasDeSol.between(100, 200) and kmARecorrer > 120)
	
	override method esInteresante() = super() and diasDeSol > 140
}


class ClasesDeGimnasia inherits Actividad(idiomas = ["español"]){
	
	override method dias()= 1
	
	override method implicaEsfuerzo() = true
	
	override method sirveParaBroncearse() = false
	
	override method recomendadaParaSocio(socio) = socio.edad().between(20, 30)
	
}


class Libros{
	const property idioma
	const property paginas
	const property autor
}

class TallerLiterario inherits Actividad{
	const libros = []
	
	override method dias() = libros.size() + 1
	
	method agregarLibro(libro){
		libros.add(libro)
	}
	
	method idiomasUsados() = libros.map({ libro => libro.idioma()})
	
	override method implicaEsfuerzo() = libros.any({ libro => libro.paginas() > 500}) or 
		(libros.all({ libro => libro.autor()}).asSet().size() == 1 and libros.size() > 1)
	
	override method sirveParaBroncearse() = false
	
	override method recomendadaParaSocio(socio) = socio.idiomas().size() > 1
	
}


class Socios{
	const actividades = []
	const maximo
	var property edad
	var property idiomas = []
	
	method agregarActividad(actividad){
		if(actividades.size() < maximo){
			actividades.add(actividad)
		} else {
			throw new Exception(message = "Supero el maximo de actividades")
		}
		
	}
	
	method adoraElSol() = actividades.all({x => x.sirveParaBroncearse()})
	
	method actividadesEsforzadas() = actividades.filter({ x => x.implicaEsfuerzo()})
	
	method leAtraeActividad(actividad)
}


class SocioTranquilo inherits Socios{
	
	override method leAtraeActividad(actividad) = actividad.dias() >= 4

}


class SocioCoherente inherits Socios{
	
	override method leAtraeActividad(actividad) = 
		if (self.adoraElSol()) actividad.sirveParaBroncearse()
		else actividad.implicaEsfuerzo()
		
}


class SocioRelajado inherits Socios{
	
	override method leAtraeActividad(actividad) =
		idiomas.any({ idioma => actividad.idiomas().contains(idioma)})
		
}




