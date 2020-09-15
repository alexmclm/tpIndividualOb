import main.personajes.*

object equipo1 {
	var property integrantes = #{}
	
	method agregarIntegrantes(unosIntegrantes){
		integrantes.addAll(unosIntegrantes)
	}
	method energiaTotal(){
		return integrantes.sum({unIntegrante => unIntegrante.energiaInicial()})
	}
	method gritoDeVictoria(){
		return integrantes.map({unIntegrante=> unIntegrante.gritoVictoria()})
	} 
	method luchaContra(unEquipo){
		integrantes.forEach({unPersonaje => unPersonaje.lucharContra(unEquipo.integrantes())})
	}

}

object equipo2 {
	var property integrantes = #{}
	method agregarIntegrantes (unosIntegrantes){
		integrantes.addAll(unosIntegrantes)
	}
	method energiaTotal(){
		return integrantes.sum({unIntegrante => unIntegrante.energiaInicial()})
	}
	method gritoDeVictoria(){
		return integrantes.map({unIntegrante=> unIntegrante.gritoVictoria()})
	} 
	method luchaContra(unEquipo){
		integrantes.forEach({unPersonaje => unPersonaje.lucharContra(unEquipo.integrantes())})
	}
	
	 
}
