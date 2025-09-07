object gimenez {
    var fondo = 300000

    method pagarSueldo(empleado) {
        self.validarPagarSueldo(empleado)
        fondo = fondo - empleado.sueldo()
        empleado.cobrar()
    }
    method validarPagarSueldo(empleado){
        if (not self.puedePagar(empleado)){
            self.error ("No hay dinero suficiente para pagar" + empleado.sueldo())
            self.error("Fondos insuficientes: Fondo=" + fondo + ", Sueldo=" + empleado.sueldo())
        }
    }
    method puedePagar(empleado){
        return fondo >= empleado.sueldo()
    }
    method fondo (_fondo){
        fondo = _fondo
    }
    method fondo() {
        return fondo
    }
}

object baigorria {
    const valorPorEmpanada = 15
    var cantidadDeEmpanadas = 0
    var sueldoTotal = 0

    method vender(_cantidadDeEmpanadas) {
        cantidadDeEmpanadas = cantidadDeEmpanadas + _cantidadDeEmpanadas
    }

    method sueldo() {
        return valorPorEmpanada * cantidadDeEmpanadas
    }

    method cobrar (){
        sueldoTotal = sueldoTotal + self.sueldo()
        cantidadDeEmpanadas = 0

    }

    method totalCobrado() {
        return sueldoTotal
    }
    method cantidadDeEmpandas(){
        return cantidadDeEmpanadas
    }
    
}

object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0
    method nuevoSueldo(_nuevoSueldo) {
        sueldo = _nuevoSueldo
    }

    method sueldo() {
        return sueldo
    }
    
    method dinero(){
        return dinero 
    }

    method deuda(){
        return deuda
    }
    
method gastar(cuanto) {
        if (dinero >= cuanto) {
            dinero = dinero - cuanto
        } else {
            deuda = deuda + (cuanto - dinero)
            dinero = 0
        }
    }

    method cobrar() {
        if (deuda >= sueldo) {
            deuda = deuda - sueldo
        } else {
            dinero = dinero + (sueldo - deuda)
            deuda = 0
        }
    }

}



