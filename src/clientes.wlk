object ludmila {
	var precioArreglado = 18
	
	method precioArregladoPorKm(km) {
		return precioArreglado * km
	}
	method precioArreglado(precio) {
		precioArreglado = precio
	}
	method precioArreglado() {return precioArreglado}
}

object anaMaria {
	var estaEstable = false
	var precioArreglado = if(estaEstable) {return 30} else {return 25}
	
	method precioArregladoPorKm(km) {
		return precioArreglado * km
	}
	
	method estaEconomicamenteEstable() {
		estaEstable = true
	}
	method precioArreglado(precio) {
		precioArreglado = precio
	}
	method precioArreglado() {return precioArreglado}
}

object teresa {
	var precioArreglado = 22
	
	method precioArreglado(precio) {
		precioArreglado = precio
	}
	method precioArregladoPorKm(km) {
		return precioArreglado * km
	}
	method precioArreglado() {return precioArreglado}
}

object melina {
	var trabajaPara = ludmila
	var precioArreglado = trabajaPara.precioArreglado() - 3
	
	method precioArreglado(precio) {
		precioArreglado = precio
	}
	method trabajarPara(clienta) { trabajaPara = clienta}
	method precioArregladoPorKm(km) {
		return precioArreglado * km
	}
}