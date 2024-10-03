
class Marcas{
	const property lupulo
	const property origen
	var property precioPorLitro
	
	method graduacion()
	
}

object graduacionMundial{
	var porcentaje
	
	method porcentaje() = porcentaje
	
	method cambiarGraduacion(porcentajeNuevo){
		porcentaje = porcentajeNuevo
	}
}

class CervezaRubia inherits Marcas{
	const graduacion
	override method graduacion() = graduacion
}

class CervezaNegra inherits Marcas{
	override method graduacion() = graduacionMundial.porcentaje().min(lupulo * 2)
}

class CervezaRoja inherits CervezaNegra{
	override method graduacion() = super() * 1.25
}

class Jarras{
	var property capacidadLitros
	const property marca
	const property carpa
	
	method contenidoAlcohol() = capacidadLitros * (marca.graduacion() / 100)
	
	method precioVenta() = marca.precioPorLitro() * capacidadLitros * carpa.recargo().recargo(carpa)
	
}













