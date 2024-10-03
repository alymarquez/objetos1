import clientes.*
import oficina.*

// remiseras
object roxana {
	method precioViaje(cliente, km) = cliente.precioPorKm() * km
}

object gabriela { 
	method precioViaje(cliente, km) = (cliente.precioPorKm() * km) * 1.2
}

object mariela { 
	method precioViaje(cliente, km) = 50.max(cliente.precioPorKm() * km)
}

object juana { 
	method precioViaje(cliente, km) = if(km <= 8) 100 else 200
}

object lucia {
	var reemplazando
	
	method reemplazaA(remisera){
		reemplazando = remisera
	}
	
	method precioViaje(cliente, km) = reemplazando.precioViaje(cliente, km)
}


