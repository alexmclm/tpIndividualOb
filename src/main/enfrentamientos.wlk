import main.personajes.*
import main.equipo.*

object enfrentamiento {
	var property equiposEnfrentados = []
	
	method agregarEquipoEnfrentados(unEquipo){
		equiposEnfrentados.add(unEquipo)
	}
	
	method batalla(){
		(equiposEnfrentados.head()).luchaContra(equiposEnfrentados.last())
		(equiposEnfrentados.last()).luchaContra(equiposEnfrentados.head())
		
	}
	method equipoGanador(){
		return equiposEnfrentados.max({unEquipo =>unEquipo.energiaTotal()})
	}
	method gritosDeVictoria(){
		return self.equipoGanador().gritoDeVictoria()
	}
	
}
