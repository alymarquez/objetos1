import remiseras.*
import oficina.*

// clientes

object ludmila {
	const precio = 18
	method precioPorKm() = precio
}

object anaMaria {
	var estabilidadEconomica = true
	var precio = 0
	
	method variarEstabilidad(){
		estabilidadEconomica = !(estabilidadEconomica)
	}
	
	method precioPorKm() {
		precio = if (estabilidadEconomica) 30 else 25
		return precio
	}
}

object teresa {
	var precio = 22
	
	method precioPorKm() = precio
	
	method cambiarPrecio(precioNuevo){
		precio = precioNuevo
	}
}

object melina {
	var trabajandoPara
	
	method trabajaPara(cliente){
		trabajandoPara = cliente	
	}
	
	method precioPorKm() = trabajandoPara.precioPorKm() - 3
	
}

