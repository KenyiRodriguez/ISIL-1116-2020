import UIKit
import Foundation

class Alumno {
    
    private var nombre  : String
    private var apellido: String
    public  var dni     : String
    
    public  var nombreCompleto: String {
        return self.nombre + " " + self.apellido
    }
    
    init(nombre: String, apellido: String, dni: String) {
        
        self.nombre     = nombre
        self.apellido   = apellido
        self.dni        = dni
    }
}

let objAlumno = Alumno(nombre: "Kenyi", apellido: "Rodriguez", dni: "87654321")
print(objAlumno.nombreCompleto)

//var arrayAlumnos = [objAlumno]

var arrayAlumnos = [Alumno]()
arrayAlumnos.append(Alumno(nombre: "Kenyi", apellido: "Rodriguez", dni: "87654321"))
arrayAlumnos.append(Alumno(nombre: "Angel", apellido: "Jimenez", dni: "76543218"))
arrayAlumnos.append(Alumno(nombre: "Cesar", apellido: "Pereda", dni: "65432187"))
arrayAlumnos.append(Alumno(nombre: "Henry", apellido: "Lizama", dni: "54321876"))
arrayAlumnos.append(Alumno(nombre: "Jose", apellido: "Lopez", dni: "43218765"))
arrayAlumnos.append(Alumno(nombre: "Rebeca", apellido: "Ruiz", dni: "21876543"))

print("\n**************************************")

//for (int i = 0; i < arrayAlumnos.length; i++) { let obj = arrayAlumnos[i] }

//MUY USADO
for obj in arrayAlumnos {
    print("\(obj.dni) - \(obj.nombreCompleto)")
}


//Nadie lo usa
print("\n**************************************")
for i in 0..<arrayAlumnos.count {
    
    let obj = arrayAlumnos[i]
    print("\(i) - \(obj.dni) - \(obj.nombreCompleto)")
}

//poco usado
print("\n**************************************")
arrayAlumnos.forEach { (obj) in
    print("\(obj.dni) - \(obj.nombreCompleto)")
}

print("\n************** if normal ************************")

let edad = 18

if edad >= 18 {
    print("Es MAYOR de edad")
}else {
    print("Es menor de edad")
}


print("\n************** if ternario **********************")
edad >= 18 ? print("Es MAYOR de edad") : print("Es menor de edad")


let esMayorDeEdadLarga = edad >= 18 ? true : false
let esMayorDeEdadCorta = edad >= 18

let esMenorDeEdadLarga = edad >= 18 ? false : true
let esMenosDeEdadCorta = !(edad >= 18)
