import remiseras.*
import clientes.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	method cambiarPrimerRemiserarPor(remisera) {
		primeraRemisera = remisera
	}
	method cambiarSegundoRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	method intercambiarRemiseras() {
		const i = primeraRemisera
		primeraRemisera = segundaRemisera
		segundaRemisera = i
	}
	method remiseraElegidaParaViaje(cliente, kms) {
		if(
		segundaRemisera.precioDeViaje(cliente, kms) < primeraRemisera.precioDeViaje(cliente, kms) and
		(segundaRemisera.precioDeViaje(cliente, kms) - primeraRemisera.precioDeViaje(cliente, kms)).abs() > 30
			
		) {
			return segundaRemisera
		}
		else {return primeraRemisera}
	}
}
