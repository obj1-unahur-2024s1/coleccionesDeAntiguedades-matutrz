object casaAntiguedades {
	
	const antiguedades = []
	var fondos = 0
	
	method retornarAntiguedades() = 
		antiguedades.clear()
	
	method adquirirAntiguedad(antiguedad) = 
		antiguedades.add(antiguedad)
	
	method adquirirLote(lote) = 
		antiguedades.addAll(lote)
	
	method hayEnStock(antiguedad) = 
		antiguedades.contains(antiguedad)
		
	method cantidadDeAntiguedades() =
		antiguedades.size()
		
	method ultimaAdquisicion() =
		antiguedades.last()
	
	method esMuyAntiguo(antiguedad) = 
		antiguedad.antiguedad() > 100
	
	method localizarAntiguedad(posicion) =
		antiguedades.get(posicion)
		
	method antiguedadDeXArticulo(posicion){
		var articuloBuscado
		
		articuloBuscado = self.localizarAntiguedad(posicion)
		return articuloBuscado.antiguedad()
	}
	
	method restaurarPrimera() {
		antiguedades.first().restaurar()
	}
	
	method restaurarUltimo() {
		antiguedades.last().restaurar()
	}
	
	method restaurarXAntiguedad(posicion){
		var antiguedadBuscada
		
		antiguedadBuscada = self.localizarAntiguedad(posicion)
		antiguedadBuscada.restaurar()
	}
	
	method restaurarAntiguedadEnMalEstado(antiguedad) {
		if (not antiguedad.estaEnBuenEstado()) {
			antiguedad.restaurar()
		}
	}
	
	method venderTodasLasAntiguedades(){
		fondos = antiguedades.sum({a => a.precio()})
		self.retornarAntiguedades()
		return fondos
	}
	
}

class Lote {
	
	const contenido = []
	
	method sumarAntiguedad(antiguedad) =
	contenido.add(antiguedad)
	
	method vaciarContenido() = contenido.clear()
}

class Antiguedad {
	
	var edadDeAntiguedad = 0
	var restaurado = false
	var precio = 0
	var buenEstado = false
	
	method setAntiguedad(edad) {
		edadDeAntiguedad = edad
	}
	
	method antiguedad() = edadDeAntiguedad
	
	method setPrecio(precioNuevo) {
		precio = precioNuevo 
	}
	
	method precio() = precio
	
	method restaurar(){
		restaurado = true
	}
	
	method estaRestaurado() = restaurado
	
	method setBuenEstado(){
		buenEstado = not buenEstado
	}
	
	method estaEnBuenEstado() = buenEstado
	
}