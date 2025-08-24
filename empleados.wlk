object galvan {
    var sueldo = 15000

    method sueldo (){
        return sueldo
    }

    method actualizarSueldo(_nuevoSueldo){
        sueldo = _nuevoSueldo
    }
}

object baigorria {
   const gananciaPorEmpandaVendida = 15
   var cantidadDeEmpandasVendidas = 0
   
   method sueldo() {
    return cantidadDeEmpandasVendidas * gananciaPorEmpandaVendida
   }

   method  numeroDeEmpandasVendidas(_cantidadDeEmpandasVendidas){
    cantidadDeEmpandasVendidas= cantidadDeEmpandasVendidas + _cantidadDeEmpandasVendidas 
   }

}

object gimenez {
    var fondoDeSueldos = 300000

    method fondoParaSueldos () {
        return fondoDeSueldos
    }

    method pagarSueldoA(empleado){
        fondoDeSueldos = fondoDeSueldos - empleado.sueldo()
    }
}
