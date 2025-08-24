object galvan {
    var sueldo = 15000

    method sueldo (){
        return sueldo
    }

    method actualizarSueldo(_nuevoSueldo){
        sueldo = _nuevoSueldo
    }
    method cobrar(){
        
    }
}

object baigorria {
   const gananciaPorEmpandaVendida = 15
   var cantidadDeEmpandasVendidas = 0
   var totalCobrado = 0
   
   method sueldo() {
      return cantidadDeEmpandasVendidas * gananciaPorEmpandaVendida
   }

   method numeroDeEmpanadasVendidas(_cantidadDeEmpandasVendidas) {
      cantidadDeEmpandasVendidas = cantidadDeEmpandasVendidas + _cantidadDeEmpandasVendidas 
   }

   method cobrar() {
      totalCobrado = totalCobrado + self.sueldo()
      cantidadDeEmpandasVendidas = 0   // reinicia cantDeEmpVend para el próximo mes.
   }

   method totalCobrado() {
      return totalCobrado
   }
}


object gimenez {
    var fondoDeSueldos = 300000

    method fondoParaSueldos () {
        return fondoDeSueldos
    }

    method pagarSueldoA(empleado){
        fondoDeSueldos = fondoDeSueldos - empleado.sueldo()
        empleado.cobrar().
    }
}
