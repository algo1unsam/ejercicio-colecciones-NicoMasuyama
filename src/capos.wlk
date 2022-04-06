import objetos.*
import enemigos.*

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
		objetosAgarrados.forEach{objeto=>objeto.aumentaUso()}
		poderTotal = poderBase
		poderTotal += objetosAgarrados.forEach{objeto=>objeto.poder(poderBase)}
	}
	

}
