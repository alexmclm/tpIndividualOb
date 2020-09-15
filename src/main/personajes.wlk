
object laDoctora {
	var property botiquin = ["algodon","agua oxigenada","cintas de papel","cintas de papel"]
	var property energiaInicial = 6000
	method gritoVictoria() {
		return "ha llevado wallace, digo pamela"
	}
	method lucharManoAMano(unEnemigo){
		energiaInicial += 400
	}
	method cantidadElementosBotiquin(){
		return botiquin.size()
	}
	method perderEnergia(unaCantidad){
		energiaInicial -= unaCantidad
	}
	method lucharContra(unosPersonajesEnemigos){
		unosPersonajesEnemigos.forEach({unEnemigo=>self.lucharManoAMano(unEnemigo)})
	}
	method perderElemento(ultimoElemento){
		self.botiquin().remove(ultimoElemento)

	}	
}

object musicoterapeuta  {
	var property botiquin = ["guitarra","curitas","cotonetes"]
	var property energiaInicial = 5600
	method gritoVictoria() {
		return "siente mi poder, maldito insecto"
	}
	method lucharManoAMano(unEnemigo){
		energiaInicial += 500
	}
	method cantidadElementosBotiquin(){
		return botiquin.size()
	}
	method perderEnergia(unaCantidad){
		energiaInicial -= unaCantidad
	}		
	method perderElemento(ultimoElemento){
		self.botiquin().remove(ultimoElemento)

	}	
	method lucharContra(unosPersonajesEnemigos){
		unosPersonajesEnemigos.forEach({unEnemigo=>self.lucharManoAMano(unEnemigo)})
	}	
}


object guerrera  {
	var property botiquin = ["rastrillo"," macetas","macetas","manguera"]
	var property energiaInicial = 8400
	method gritoVictoria() {
		return "hora de volver a tus plantas"
	}
	method lucharManoAMano(unEnemigo){
		unEnemigo.perderEnergia(0.5 * unEnemigo.energiaInicial())
	}
	method cantidadElementosBotiquin(){
		return botiquin.size()
	}
	method perderEnergia(unaCantidad){
		energiaInicial -= unaCantidad
	}
	method perderElemento(ultimoElemento){
		self.botiquin().remove(ultimoElemento)

	}	
	method lucharContra(unosPersonajesEnemigos){
		unosPersonajesEnemigos.forEach({unEnemigo=>self.lucharManoAMano(unEnemigo)})
	}				
}


object tanque  {
	var property botiquin = #{}
	var property energiaInicial = 7800
	
	method gritoVictoria() {
		return "no se metan con el toro"
	}
	method lucharManoAMano(unEnemigo){
		unEnemigo.perderEnergia(200 * unEnemigo.cantidadElementosBotiquin())
		self.robarElemento(unEnemigo)
	}
	method robarElemento(unEnemigo){
		var ultimoElemento = unEnemigo.botiquin().last() 
		unEnemigo.perderElemento(ultimoElemento)
		self.agregarAlBotiquin(ultimoElemento)
	}
	method agregarAlBotiquin(unElemento){
		botiquin.add(unElemento)
	}
	method perderEnergia(unaCantidad){
		energiaInicial -= unaCantidad
	}
	method lucharContra(unosPersonajesEnemigos){
		unosPersonajesEnemigos.forEach({unEnemigo=>self.lucharManoAMano(unEnemigo)})
	}			
}

