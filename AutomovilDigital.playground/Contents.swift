//: Automovil Digital

import UIKit

//Se declara el enum de las velocidades
enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    //Declracion de inicializador
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

//Se declara la Clase Auto
class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        let resultado : (Int, String)
        
        switch velocidad{
        case .Apagado :
            velocidad = Velocidades.VelocidadBaja
            resultado = (velocidad.rawValue, "Velocidad baja")
        case .VelocidadBaja, .VelocidadAlta :
            velocidad = Velocidades.VelocidadMedia
            resultado = (velocidad.rawValue, "Velocidad media")
        case .VelocidadMedia :
            velocidad = Velocidades.VelocidadAlta
            resultado = (velocidad.rawValue, "Velocidad alta")
        }
        return resultado
    }
}

//Se instancia la clase Auto para declarar el objeto auto
var auto = Auto()

//Se realiza el for de 20 iteraciones ejecutando el metodo cambioDeVelocidad
for index in 1...20 {
    var cambioActual = auto.cambioDeVelocidad()
    
    print("\(cambioActual.actual), \(cambioActual.velocidadEnCadena)")
}