import UIKit

/*
 
 {
    "nombre" : "kenyi",
    "apellido" : "Rodriguez"
 }
 
 */

var nombre: String? = nil
var apellido: String? = "Rodriguez"

print(nombre ?? "Sin nombre")


let txtNumero1 = UITextField()
txtNumero1.text = "2"

let txtNumero2 = UITextField()
txtNumero2.text = "10"


func sumarConUnwrapped() {
    
    let numero1 = Int(txtNumero1.text ?? "")
    let numero2 = Int(txtNumero2.text ?? "")

    let suma = (numero1 ?? 0) + (numero2 ?? 0)
    print("la suma es: \(suma)")
}


//if let -> crea una variable segura en un nuevo contexto o ámbito
func sumarConIfLet() {
        
    if let textoNumero1Seguro = txtNumero1.text, let numero1Seguro = Int(textoNumero1Seguro) {
        
        if let textoNumero2Seguro = txtNumero2.text, let numero2Seguro = Int(textoNumero2Seguro) {
            
            let suma = numero1Seguro + numero2Seguro
            print("La suma es: \(suma)")
            
        }else{
            print("Ingresa un valor correcto en la segunda caja de texto")
        }
    }else{
        print("Ingresa un valor correcto en la primera caja de texto")
    }
}


//guard let -> crea una variable segura en el contexto o ámbito actual
func sumarConGuardLet() {
    
    guard let textoNumero1Seguro = txtNumero1.text, textoNumero1Seguro.count != 0 else {
        print("Ingresa un valor para el número 1")
        return
    }
    
    guard let textoNumero2Seguro = txtNumero2.text, textoNumero2Seguro.count != 0 else {
        print("Ingresa un valor para el número 2")
        return
    }
    
    guard let numero1Seguro = Int(textoNumero1Seguro) else {
        print("El valor del texto 1 no es un número")
        return
    }
    
    guard let numero2Seguro = Int(textoNumero2Seguro) else {
        print("El valor del texto 2 no es un número")
        return
    }
    
    let suma = numero1Seguro + numero2Seguro
    print("La suma es: \(suma)")
}

sumarConGuardLet()


