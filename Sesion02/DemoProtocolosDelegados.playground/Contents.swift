import UIKit

protocol AlumnoInterfaz {
    
    func estudiarIOS(alumno: Alumno)
    func estudiarAndroid(alumno: Alumno)
    func entregarTrabajoFinal(alumno: Alumno) -> Double
}

class Alumno {
    
    private var nombre: String
    private var apellido: String
    private var delegado: AlumnoInterfaz?
    
    public var trabajoFinal: Double = 0
    
    public var nombreCompleto: String {
        return "\(nombre) \(apellido)"
    }
    
    init(nombre: String, apellido: String, delegado: AlumnoInterfaz?) {
        self.nombre = nombre
        self.apellido = apellido
        self.delegado = delegado
    }
    
    func asistirClase() {
        
        self.delegado?.estudiarIOS(alumno: self)
        self.delegado?.estudiarAndroid(alumno: self)
    }
    
    func desarrollarCurso() {
        self.trabajoFinal = self.delegado?.entregarTrabajoFinal(alumno: self) ?? 0
    }
    
    func promediarNotas() -> Double {
        return 0
    }
}



//******************************************************

class Instituto {
    
    func ensenarClase() {
        
        let javier = Alumno(nombre: "Javier", apellido: "Ruiz", delegado: self)
        javier.asistirClase()
        javier.desarrollarCurso()
        
        let roberto = Alumno(nombre: "Roberto", apellido: "Rosas", delegado: self)
        roberto.asistirClase()
        roberto.desarrollarCurso()
        
        print("La nota de \(javier.nombreCompleto) es: \(javier.trabajoFinal)")
        print("La nota de \(roberto.nombreCompleto) es: \(roberto.trabajoFinal)")
    }
}

extension Instituto: AlumnoInterfaz {
    
    func entregarTrabajoFinal(alumno: Alumno) -> Double {
        //La institucion revisa y evalua el trabajo para generar una nota
        return Double.random(in: 10...20)
    }

    func estudiarIOS(alumno: Alumno) {
        print("ESTUDIANDO iOS \(alumno.nombreCompleto)")
    }
    
    func estudiarAndroid(alumno: Alumno) {
        print("ESTUDIANDO ANDROID \(alumno.nombreCompleto)")
    }
}


let objInstituto = Instituto()
objInstituto.ensenarClase()
