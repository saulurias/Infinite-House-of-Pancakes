//: Playground - noun: a place where people can play

import UIKit

var cakes = [3,6,9]  //Cakes por cliente
var minutes = 0

while cakes.count > 0 {
    var maxValue = cakes.max() //Valor máximo
    
    //Verificamos si el valor máximo no es un valor repetido
    var duplicatedCakes = 0
    for cake in cakes { //Buscamos si no se repite el valor máximo
        if cake == maxValue! {
            duplicatedCakes += 1
            if duplicatedCakes >= 2 {
                //Si se repite, detenemos el ciclo
                eatCakes()
                break;
            }
        }
    }
    
    if duplicatedCakes < 2 {
        //Verificamos si lo podremos dividir
        if maxValue! % 2 == 0 { //Validamos si es divisible de 2
            var maxIndex = cakes.index(of: maxValue!) //Indice del valor máximo
            cakes[maxIndex!] = maxValue!/2
            cakes.append(maxValue!/2)
            minutes += 1
            print("Cakes: \(cakes) Minutes: \(minutes)")
        }else {
            eatCakes()
        }
    }

}

func eatCakes(){
    for i in 0...cakes.count-1 {
        cakes[i] = cakes[i]-1
    }
    
    minutes += 1
    
    cakes = cakes.filter({ $0 != 0 }) //Eliminamos los 0 del array
    
    print("Cakes: \(cakes) Minutes: \(minutes)")
}






