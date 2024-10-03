import bicis.*
import accesorios.*

class Deposito {
	var property bicis = []
	const ordenBicis = []
	
	method agregarBici(bici){
		bicis.add(bici)
		ordenBicis.add(bici)
	}
	
	method bicisRapidas() = bicis.filter({x=>x.velocidadDeCrucero() > 25})
	
	method bicisMarca() = bicis.map({x=>x.marca()}).asSet()
	
	method esDepositoNocturno() = bicis.all({x=>x.tieneLuz()})
	
	method paraLlevar(cargakilos) = bicis.any({x=>x.carga() > cargakilos})
	
	method marcaDeLaMasRapida() = bicis.max({x => x.velocidadDeCrucero() }).marca()
	
	method bicisLargas() = bicis.filter({x=>x.largo() > 170})
	
	method cargaTotalDeLasBicisLargas() = self.bicisLargas().sum({x=>x.carga()})
	
	method bicisSinAccesorios() = bicis.count({x=>x.cantDeAccesorios() == 0}) 
	
 	method companerasDe(unaBici) {
        const bicisCompaneras = bicis.filter({ x =>
            x != unaBici && x.marca() == unaBici.marca() && (x.largo() - unaBici.largo()).abs() <= 10
        })
        return bicisCompaneras
    }
	
	// Desafios ( se intentaron )
	method hayCompanieras() = bicis.any({x => self.companerasDe(x).size() > 0})
	
	method paresDeCompanieras(){
		const pares = []
		
		bicis.forEach({bici => 
			self.companerasDe(bici).forEach({x => 
				if (!pares.any({ par => par.contains(bici) && par.contains(x) })){
                    pares.add([bici, x])}
				})
		})
		
		return pares
	}
	
	method seHizoLaLuz() {
	    return ordenBicis.all({ bici => bici.tieneLuz() })
	}

}
