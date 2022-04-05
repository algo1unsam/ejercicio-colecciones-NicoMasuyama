
object rolando {
	const objetosTotales=#{}
	const objetosCastillo=#{}
	const objetosAgarrados=#{}
	const objetosEncontrados=[]
	var property capacidad = 2
	var property poderBase = 5
	var property poderTotal = poderBase
	
	method encuentra(objeto){
		if (objeto.cantidad() >0){
		objetosEncontrados.add(objeto)
		objeto.cantidad(0)
			if (objetosAgarrados.size() < capacidad){
			objetosAgarrados.add(objeto)
			poderTotal += objeto.poder(poderBase)
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
		poderTotal = poderBase
	}

	method luchar(){
		poderBase +=1
	}
	
	method consultaPoderTotal(){
		return poderTotal
	}

}



object espadaDelDestino{
	var property cantidad = 1
	var usos = 0
	
	method poder(poderBase){
		if (usos==0){
			return poderBase
		}
		else {return poderBase/2}
	}
	
	method aumentaUso(){
		usos+=1
	}
}
	
object libroDeHechizos{
	var property cantidad = 1
	var usos = 0
	
	method aumentaUso(){
		usos+=1
	}
}

object collarDivino{
	var property cantidad = 1
	var usos = 0
	
	method poder(poderBase){
		if (poderBase >6){
			return 3 + usos
		}
		else{return 3}
	}
	method aumentaUso(){
		usos+=1
	}
}

object armaduraDeAceroValeryo{
	var property cantidad = 1
	var usos=0
	
	method poder(poderBase){
		return 6
	}
	method aumentaUso(){
		usos+=1
	}
}