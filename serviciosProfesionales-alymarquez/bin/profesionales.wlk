


class ProfesionalAsociado {
	const property universidad
	
	method honorarios() = universidad.honorarios()
	method provincias() = #{universidad.provincia()}
	method cobrar(monto){ asociacionDelLitoral.recibeDonacion(monto) }
	
}

class ProfesionalVinculado {
	const property universidad
	var property honorarios = 3000
	
	method provincias() = #{"Entre Rios", "Santa Fe", "Corrientes"}
	method cobrar(monto){ universidad.recibeDonacion(monto/2) }
}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	const property universidad
	const property provincias = #{}
	var property honorarios
	var property recaudado = 0
	
	method agregarProvincia(provincia){
		provincias.add(provincia)
	}
	
	method eliminarProvincia(provincia){
		provincias.remove(provincia)
	}
	
	method cobrar(monto){ recaudado += monto }
	
	method pasarDinero(profesionalLibre, monto){ 
		recaudado -= monto
		profesionalLibre.cobrar(monto)
	}

}

object asociacionDelLitoral {
	var recaudado = 0
	
	method recibeDonacion(recibido){ recaudado += recibido}
}

class Universidad {
	var property honorarios
	const property provincia
	var recaudado = 0
	method recibeDonacion(recibido){ recaudado += recibido}
}

class Empresa {
	const property profesionales = []
	var property honorarios
	
	method agregarProvincia(profesional){
		profesionales.add(profesional)
	}
	
	method eliminarProvincia(profesional){
		profesionales.remove(profesional)
	}
	
	
	
	method profesionalesDe(universidad) = profesionales.count({x => x.universidad() == universidad})
	
	method profesionalesCaros() = profesionales.filter({x => x.honorarios() >= honorarios})
	
	method universidadesFormadoras() = profesionales.map({x => x.universidad()}).asSet()
	
	method profesionalMasBarato() = profesionales.min( { x => x.honorarios() })
	
	method genteAcotada() = profesionales.all({x => x.provincias().size() <= 3})
	
	method satisfacerSolicitante(solicitante) = profesionales.any({x => solicitante.puedeSerAtendido(x)})
	
}

class Persona {
	var property provincias
	
	method puedeSerAtentido(profesional) = profesional.provincias().contains(provincias)
	
}

class Institucion {
	const property universidades = []
	
	method agregarUniReconocida(universidad){ universidades.add(universidad)}
	
	method puedeSerAtendido(profesional) = universidades.contains(profesional.universidad())
	
}

class Club {
	const property provincias = #{}
	
	method agregarProvincia(provincia){ provincias.add(provincia)}
	//podrá ser atendido si al menos 1 profesional puede trabajar en alguna de las provincias donde está el club.
	//method puedeSerAtendido(profesional) = provincias.any({x => profesional.provincias()}) 
	
}

