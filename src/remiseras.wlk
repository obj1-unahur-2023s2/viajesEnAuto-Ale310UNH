import clientes.*

object roxana {
	method precioDeViaje(cliente, km) {
		return cliente.precioArregladoPorKm(km)
	}
}

object gabriela {
	method precioDeViaje(cliente, km) {
		return ( (cliente.precioArregladoPorKm(km) * 20) / 100 ) + cliente.precioArregladoPorKm(km)
	}
}

object mariela {
	method precioDeViaje(cliente, km) {
		if(cliente.precioArregladoPorKm(km) > 50) {
			return cliente.precioArregladoPorKm(km)
		}
		else {
			return 50
		}
	}
}

object juana {
	method precioDeViaje(cliente, km) {
		if (km <= 8) {
			return 100
		}
		else {return 200}
	}
}

object lucia {
	var remplazando
	
	method remplazarA(alguien) {remplazando = alguien}
	method precioDeViaje(cliente, km) {
		return remplazando.precioDeViaje(cliente, km)
	}
}