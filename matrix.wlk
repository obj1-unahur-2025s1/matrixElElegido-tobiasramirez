object neo {
  var energia = 100
  
  method energia() = energia
  
  method saltar() {
    energia /= 2
  }
  
  method vitalidad() = energia / 10
  
  method esElElegido() = true
}

object morfeo {
  var vitalidad = 8
  var cansado = false
  method saltar() {
    cansado = not cansado
    vitalidad = vitalidad - 1
  }

  
  method vitalidad() = vitalidad
  
  method esElElegido() = false
}

object trinity {
  method saltar() {
    
  }
  
  method vitalidad() = 0
  
  method esElElegido() = false
}

object nave {
  const pasajeros = #{trinity, morfeo, neo}
  
  method cantidadPasajeros() = pasajeros.size()
  
  method mayorVitalidad() = pasajeros.max({ p => p.vitalidad() })
  method menorVitalidad() = pasajeros.min({p=>p.vitalidad()})
  
  method estaEquilibrada() {  
    
    return self.mayorVitalidad().vitalidad() < self.menorVitalidad().vitalidad() * 2

 }
  method estaElElegido() {return pasajeros.any({p => p.esElElegido()})}
  method choque() {pasajeros.clear()}
  method acelerar() { 
    const noElegidos = [morfeo, trinity]
    noElegidos.forEach({p=>p.saltar()}) 
  }
}