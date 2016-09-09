class Maestro{
	var habilidad
	constructor(_habilidad){
		habilidad = _habilidad
	}
	method poder() 
	
	
	method esGroso()= self.poder() > 1000 && habilidad > 5
	
}



class MaestroAgua inherits Maestro{
	
	constructor (_habilidad)= super(_habilidad)
	
	override method poder()= habilidad + luna.intensidad() * 5
	
	method esPeligroso() = self.poder() > 100	
		} 


object luna{
	var intensidad
	method intensidad() = intensidad
	method intensidad(_intensidad)={intensidad = _intensidad} 
}

class MaestroFuego inherits Maestro{
	var nivelDeRabia
	var locura
	
	constructor(_habilidad,_nivelDeRabia,_locura)= super(_habilidad){
		
		nivelDeRabia = _nivelDeRabia
		locura = _locura
	}
	
	override method poder()= nivelDeRabia / locura
	
}


class MaestroAire inherits Maestro {
	var ligereza
	var mascota
	constructor(_habilidad,_mascota,_ligereza)= super(_habilidad){
		ligereza = _ligereza
		mascota = _mascota
		
	}
	
	
	override method poder() = mascota.poder() *ligereza

}

class MestroSangre inherits MaestroAgua{
	constructor(_habilidad)= super(_habilidad)
	override method esPeligroso() = true
	override method poder() = super() * 2 
}


class Mascota{
	var poder
	constructor(_poder){
		poder = _poder
	}
	method poder() = poder
	method poder(_poder) = {poder = _poder}
	
}


object aagn inherits MaestroAire(20,appa,10){
	override method esGroso() = true
}


object appa inherits Mascota(50){}
