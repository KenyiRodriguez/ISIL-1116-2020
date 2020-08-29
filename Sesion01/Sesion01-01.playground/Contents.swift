import Foundation

var edadMutable = 18
let numeroDocumentoInmutable = "87654321"

edadMutable = 19
edadMutable = 20

let nombre = "Kenyi"
let apellido: String = "Rodriguez"

let precioProducto: Float = 2.5
let pruebaDecimal = 0.2

let nombreAlumno = "Kenyi"
let apellidoAlumno = "Rodriguez"

let nombreCompleto1 = nombreAlumno + apellidoAlumno
print(nombreCompleto1)

let nombreCompleto2 = nombreAlumno + " " + apellidoAlumno
print(nombreCompleto2)

let nombreCompleto3 = "\(nombreAlumno) \(apellidoAlumno) - la edad es:\(edadMutable)"
print(nombreCompleto3)


//func nombreFuncion(desc* variable: tipoDato, desc* variable: tipoDato...) -> tipoDato { //Codigo }
//desc* -> puede ser un espacio en blanco o un underline(_)


//sumar(12,14)
//registrarPersona("steven", "laura", "87654321")


//NO RECOMENDADO
func sumar(_ n1: Int, _ n2: Int) -> Int {
    return n1 + n2
}

func registrarPersona(_ nombre: String, _ apellido: String, _ dni: String) {
}
sumar(12, 13)
registrarPersona("steven", "laura", "87654321")



//RECOMENDADO
func sumar(n1: Int, n2: Int) -> Int {
    return n1 + n2
}
sumar(n1: 12, n2: 15)

func sumarNumero1(_ n1: Int, conNumero2 n2: Int) -> Int {
    return n1 + n2
}
sumarNumero1(13, conNumero2: 19)

func sumar(numero1 n1: Int, conNumero2 n2: Int) -> Int {
    return n1 + n2
}
sumar(numero1: 16, conNumero2: 20)



