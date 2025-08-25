object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0

    method sueldo() {
        return sueldo
    }

    method actualizarSueldo(_nuevoSueldo) {
        sueldo = _nuevoSueldo
    }

    method cobrar() {
        if (self.sueldo() >= self.deuda()) {
            dinero = dinero + (self.sueldo() - self.deuda())
            deuda = 0
        } else {
            deuda = self.deuda() - self.sueldo()
        }
    }

    method deuda() { return deuda }
    method dinero() { return dinero }

    method gastar(monto) {
        if (monto <= self.dinero()) {
            dinero = dinero - monto
        } else {
            var montoAdeudado = monto - dinero
            dinero = 0
            deuda = deuda + montoAdeudado
        }
    }
}

object baigorria {
   const gananciaPorEmpanadaVendida = 15
   var cantidadDeEmpanadasVendidas = 0
   var totalCobrado = 0
   
   method sueldo() {
      return cantidadDeEmpanadasVendidas * gananciaPorEmpanadaVendida
   }

   method numeroDeEmpanadasVendidas(_cantidad) {
      cantidadDeEmpanadasVendidas = cantidadDeEmpanadasVendidas + _cantidad
   }

   method cobrar() {
      totalCobrado = totalCobrado + self.sueldo()
      cantidadDeEmpanadasVendidas = 0   
   }

   method totalCobrado() {
      return totalCobrado
   }
}

object gimenez {
    var fondoDeSueldos = 300000

    method fondoParaSueldos() {
        return fondoDeSueldos
    }

    method pagarSueldoA(empleado){
        fondoDeSueldos = fondoDeSueldos - empleado.sueldo()
        empleado.cobrar()
    }
}

