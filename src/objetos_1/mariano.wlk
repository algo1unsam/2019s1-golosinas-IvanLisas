import golosinas.*

object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	var golosinas=[]
	
	method comprar(golosina) {
		golosinas.add(golosina)
	}
	
	method desechar(golosina){
		golosinas.remove(golosina)
	}
	
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	
	method probarGolosinas() { /* completar */ }
	
	
	method hayGolosinaSinTACC(){
		golosinas.findOrElse ({ golosina => golosina.libreGluten()},{true})
		
	}
}

