import golosinas.*

object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	var golosinas = []
	
	method golosinas()=golosinas
	
	method comprar(golosina) {
		golosinas.add(golosina)
	}
	
	method desechar(golosina){
		golosinas.remove(golosina)
	}
	
	/*method golosinas() {
		/* cambiar por la implementacion correcta/
		return [] 
	}*/ 
	
	method probarGolosinas(){  golosinas.forEach{ golosina=>golosina.mordisco() }}
	
	
	method hayGolosinaSinTACC(){
		return  golosinas.any({ golosina => golosina.libreGluten()})
	}
	
	method preciosCuidados(){
		return  golosinas.all({ golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(unSabor){
		return golosinas.find{ golosina=>golosina.sabor()==unSabor}
	}
	
	method golosinasDesabor(unSabor){
		return golosinas.filter{ golosina=>golosina.sabor()==unSabor}
	}
	
	method sabores(){
		return {golosinas.map{ golosina=>golosina.sabor() }}.asSet()
	}
	
	method golosinaMasCara(){
		return golosinas.max{ golosina=>golosina.precio() }
	}
	
	method pesoGolosinas(){
		return golosinas.sum{ golosina=>golosina.peso() }	
	}
	
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinas)
	}
	
	method gustosFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinas.map{golosina=>golosina.gusto()})
	}
	
	
}

