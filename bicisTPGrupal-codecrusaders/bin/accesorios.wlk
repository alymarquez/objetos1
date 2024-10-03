
class Farolito {
	const property peso = 0.5
	const property esLuminoso = true
	const property carga = 0
	
	
}

class Canasto {
	var property volumen = 0
	const property esLuminoso = false
	
	method peso() = self.volumen() / 10
	method carga() = self.volumen() * 2
	
}

class MorralBici{
	var property largo = 0
	var property tieneOjoDeGato = false
	const property peso = 1.2
	
	method esLuminoso() = self.tieneOjoDeGato() 
	
	method carga() = self.largo() / 3
	
}

/* respuesta 
 * No se debe agregar nada aparte de dichas clases, estas deben cumplir con el contrato y ser polimorficos con los demas accesorios.
   Solo interesa su peso, cargar y si son luminosos. */
