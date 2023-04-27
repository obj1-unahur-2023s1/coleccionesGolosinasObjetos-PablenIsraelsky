import gustos.*

object bombon {
	var peso = 15
	var property precio = 5
	var property tieneGluten = false
	const property sabor = frutilla
	
	method  recibirMordisco() {
		peso = (peso * 0.8) - 1
	}
	
	method getPeso() = peso
	method setPeso() {}
}

object alfajor {
	var peso = 300
	var property precio = 12
	var property tieneGluten = true
	const property sabor = chocolate
	
	method  recibirMordisco() {
		peso = peso * 0.8
	}
	
	method getPeso() {}
	method setPeso() {}
}

object caramelo {
	var peso = 5
	var property precio = 1
	var property tieneGluten = false
	const property sabor = frutilla
	
	method  recibirMordisco() {
		peso -= 1
	}
	
	method getPeso() {}
	method setPeso() {}
}

object chupetin {
	var peso = 7
	var property precio = 2
	var property tieneGluten = false
	const property sabor = naranja
	
	method  recibirMordisco() {
		if (peso > 2) {
			peso = (peso * 0.9)
		}
		
	}
	
	method getPeso() {}
	method setPeso() {}
}

object oblea {
	var peso = 250
	var property precio = 5
	var property tieneGluten = true
	const property sabor = vainilla
	
	method  recibirMordisco() {
		if (peso > 70) {
			peso = peso * 0.5
		} else {
			peso = peso * 0.75
		}
	}
	
	method getPeso() {}
	method setPeso() {}
}

object chocolatin {
	var property peso 
	var property precio = 0.5 * peso
	var property tieneGluten = true
	const property sabor = chocolate
	
	method  recibirMordisco() {
		peso -= 2
	}
	
}

object golosinaBaniada {
	var peso = golosinaBase.peso() + banio
	var property precio = golosinaBase.precio() + 2
	var property tieneGluten = golosinaBase.tieneGluten()
	var property golosinaBase
	const sabor = golosinaBase.sabor()
	var banio = 4
	
	method  recibirMordisco() {
		golosinaBase.recibirMordisco()
		banio = (banio - 2).max(0)
	}
	
	method getPeso() = peso
}

object pastillaTuttiFrutti {
	const property peso = 5
	var precio
	var property tieneGluten
	var sabor = frutilla
	
	method  recibirMordisco() {
		if (sabor == frutilla) {
			sabor = chocolate
		} else if (sabor == chocolate) {
			sabor = naranja
		} else if (sabor == naranja) {
			sabor = frutilla
		}
	}
	
	method getPrecio() = precio
	method setPrecio() {
		if (tieneGluten) {
			precio = 7
		} else {
			precio = 10
		}
	}
}

