import capos.*
import enemigos.*

object espadaDelDestino{
	var property cantidad = 1
	var property usos = 0
	
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
	var property usos = 0
	
	method aumentaUso(){
		usos+=1
	}
}

object collarDivino{
	var property cantidad = 1
	var property usos = 0
	
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
	var property usos=0
	
	method poder(poderBase){
		return 6
	}
	method aumentaUso(){
		usos+=1
	}
}