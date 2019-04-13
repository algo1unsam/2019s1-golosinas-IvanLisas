object bombon {
	
	var peso = 15
	method precio() { return 5 }
	method peso() { return peso }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
	
	method mordisco() {
		peso = peso * 0.8 - 1
	}
}

object alfajor {

	var peso = 300
	method precio() { return 12 }
	method peso() { return peso }
	method gusto() { return "chocolate" }
	method libreGluten() { return false}
	
	method mordisco(){
		peso = (peso * 0.8)
	}
}

object caramelo {
	
	var peso = 5
	method precio() { return 1 }
	method peso() { return peso }
	method gusto() { return "frutilla" }
	method libreGluten() { return true}
	
	method mordisco(){
		peso -=1
	}
}

object chupetin {
	
	var peso = 7
	method precio() { return 2 }
	method peso() { return peso }
	method gusto() { return "naranja" }
	method libreGluten() { return true}
	
	method mordisco(){
		if(peso>2)
		peso = peso*0.9
	}
}

object oblea {
	
	var peso = 200
	method precio() { return 5 }
	method peso() { return peso }
	method gusto() { return "vanilla" }
	method libreGluten() { return false}
	
	method mordisco(){
		peso = (peso * 0.8)
	}
}

object chocolatin {
	
	var pesoInicial
	var pesoActual
	
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	
	method peso() { return pesoActual }
	method gusto() { return "chocolate" }
	method libreGluten() { return false}
	
	method precio(){
		return pesoInicial*0.5
	}
	
	method mordisco(){
		pesoActual -= 2
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio()+ 2 }
	method peso() {  return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
}

