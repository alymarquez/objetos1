object enterprise {
	
	var potencia = 50
	var coraza = 5

	method potencia(){
		return potencia
	}
	
	method  coraza(){
		return coraza
	}
	
	method  encontrarPilaAtomica(){
		potencia = if(potencia + 25 > 100) 100.max(potencia) else potencia + 25
	}
	
	method  encontrarEscudo(){
		coraza = if(coraza + 10 > 20) 20.max(coraza) else coraza + 10
	}
	
	method recibirAtaque(puntos){
		potencia = if (puntos > coraza) 0.max(potencia - (puntos - coraza)) else potencia
		coraza = 0.max(coraza - puntos)
	}
	
	method  fortalezaDefensiva(){
		return coraza + potencia
	}
	
	method  necesitaFortalecerse(){
		return coraza == 0 and potencia < 20
	}
	
	method  fortalezaOfensiva(){
		var puntosDeFuerza = 0
		
		puntosDeFuerza += if(potencia < 20) 0 else (potencia- 20) / 2
		
		return puntosDeFuerza
	}
	
}
