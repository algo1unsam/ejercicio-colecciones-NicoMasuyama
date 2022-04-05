
object rolando {
	const objetosTotales=#{}
	const objetosCastillo=#{}
	const objetosAgarrados=#{}
	const objetosEncontrados=[]
	
	method encuentra(objeto){
		if (objeto.cantidad() >0){
		objetosEncontrados.add(objeto)
		objeto.cantidad(0)
			if (objetosAgarrados.size() < 2){
			objetosAgarrados.add(objeto)	
			}
		}
	}
	method consultaAgarrados(){
		return objetosAgarrados
	}
	
	method consultaEncontrados(){
		return objetosEncontrados
	}
	
	method consultaCastillo(){
		return objetosCastillo
	}
	
	method consultaTotales(){
		objetosTotales.addAll(objetosAgarrados)
		objetosTotales.addAll(objetosCastillo)
		return objetosTotales
	}
	
	method castilloDePiedra(){
		objetosCastillo.addAll(objetosAgarrados)
		objetosAgarrados.clear()
	}
}





object espadaDelDestino{
	var property cantidad = 1
}

object libroDeHechizos{
	var property cantidad = 1
}

object collarDivino{
	var property cantidad = 1
}

object armaduraDeAceroValeryo{
	var property cantidad = 1
}