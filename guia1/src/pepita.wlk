object pepita {
	
	var energia = 0
	
	method  energia(){
		return energia
	}
	
	method  comer(gramos){
		energia = energia + (4 * gramos)
	}
	
	method volar(kms){
		energia = energia - (kms + 10)
	}
	
	method estaDebil(){
		return energia < 50
	}
	
	method estaFeliz(){
		return (energia.between(500, 1000))
	}
	
	method cuantoQuiereVolar(){
		var valorVolar = energia / 5 
		
		valorVolar = valorVolar + if(energia.between(300, 400)) 10 else 0
		valorVolar = valorVolar + if(energia % 20 == 0) 15 else 0
		
		return valorVolar
	}
}
