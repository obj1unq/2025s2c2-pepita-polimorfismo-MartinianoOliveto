object pepita {
	var energia = 100
	var cenas = 0 

	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
		cenas = cenas + 1 
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
	method cenas(){
		return cenas 
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
}

//EJERCICIO 1
object pepon {
	var energia = 30  
	var cenas = 0 

	method decirEnergia (){
		return energia 
	}
	method comer(comida){
		energia = energia + comida.energiaQueAporta() / 2 
		cenas = cenas + 1 
	}
	method volar(_distancia) {
		energia = energia - 20 - _distancia * 2 
	}
	method cenas(){
		return cenas 
	}
}

//EJERCICIO 2 
object roque {
	var ave = pepita 

	method aveActual(){
		return ave 
	}

	method cambiarAve(_ave){
		ave = _ave 
	}
	method alimentar(comida){
		ave.comer(comida)
	}
	method cenas(){
		return ave.cenas()
	}
}

// A pepita se le agrego una var (cenas) 
// Un getter para esta ultima 
// Un contador dentro del metodo comer 
