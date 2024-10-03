import cerveza.*

class Personas{
	const jarrasCompradas = []
	const property peso
	const property escuchaMusicaTradicional 
	const property nivelAguante
	
	method pais()
	
	method comprarJarra(jarra){
		jarrasCompradas.add(jarra)
	}
	
	method totalAlcoholIngerido() = jarrasCompradas.sum({ x=> x.contenidoAlcohol()})
	
	method estaEbria() = self.totalAlcoholIngerido() * peso > nivelAguante
	
	method leGustaLaCerveza_(marca)

	method quiereEntrarACarpa(carpa) = 
		self.leGustaLaCerveza_(carpa.marcaQueVende()) and escuchaMusicaTradicional == carpa.bandaTradicional()

	method puedeEntrar(carpa) = carpa.dejaIngresar(self)
	
	method esPatriota() = jarrasCompradas.all({ x => x.pais() == self.pais()})
	
	method carpasDondeTomo() = jarrasCompradas.map({ x => x.carpa()}).asSet()
	
	method marcasCompradas() = jarrasCompradas.map({ x => x.marca()}).asSet()
	
	/* 
	method esCompatibleCon(persona)=
		self.marcasCompradas().intersection(persona.marcasCompradas()).size() >= self.marcasCompradas().size() and
		self.marcasCompradas().intersection(persona.marcasCompradas()).size() >= persona.marcasCompradas().size()
	
	method entrandoEnVicio()
 	*/
	
	method gastoTotal() = 
		jarrasCompradas.sum({ x => x.precioVenta()})
	
	method jarraMasCara() =
		jarrasCompradas.max({ x => x.precioVenta()})
}

class Belgas inherits Personas{
	override method pais() = "belgica"
	
	override method leGustaLaCerveza_(marca) = marca.cantLupulo() > 4
}

class Chechos inherits Personas{
	override method pais() = "republica checa"
	
	override method leGustaLaCerveza_(marca) = marca.graduacion() > 8
}

class Alemanes inherits Personas{
	override method pais() = "alemania"
	
	override method leGustaLaCerveza_(marca) = true
	
	override method quiereEntrarACarpa(carpa) = 
		carpa.personas().size() % 2 == 0 and super(carpa)
}