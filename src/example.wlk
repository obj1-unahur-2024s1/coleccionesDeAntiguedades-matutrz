object registroProduccion {
	const registroDePiezas = []
	
	method agregarAlRegistro(cantPiezas) {
		registroDePiezas.add(cantPiezas)
	}
	
	method quitarAlRegistro(cantPiezas) {
		registroDePiezas.remove(cantPiezas)
	}
	
	method algunDiaSeProdujo(cantidad) {
		return registroDePiezas.contains(cantidad)
	}
	
	method maximoValorDeProduccion() {
		return registroDePiezas.max()
	}
	
	method valoresDeProduccionPares() {
		return registroDePiezas.filter({r => r.even()})
	}
	
	method produccionEsAcotada(valor1,valor2) {
		return registroDePiezas.all({r => r.between(valor1,valor2)})
	}
	
	method produccionesSuperioresA(valor) {
		return registroDePiezas.filter({r => r > valor})
	}
	
	method produccionesSumando(valor) {
		registroDePiezas.map({r => r + valor})
	}
	
	method totalProducido() {
		return registroDePiezas.sum()
	}
	
	method ultimoValorDeProduccion() {
		return registroDePiezas.last()
	}
	
	method primerValorDeProduccion() {
		return registroDePiezas.first()
	}
	
	method cantidadProduccionesMayorALaPrimera() {
		return registroDePiezas.count({r => r > self.primerValorDeProduccion()})
	}
	
}