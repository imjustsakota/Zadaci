import UIKit

var str = "Hello, playground"


//Zadatak 1: Napravi komentar koji ce se prostirati u nekoliko redova?

/*
 Komentar
    u
 nekoliko
 redova
 */

//Zadatak 2: Dat je sledeci niz var a = true, var b = false

//1)

    var a = true
    var b = true

//a and operator

    print(a && b)

//b or operator

    print(a || b)

//suprotna vrednost od a

    print(!a)

//Zadatak 3: Sta radi funkcija bool-a "toggle()"?

//Funkcija toggle flipuje vredonst bool-a

    a.toggle()

//Zadatak 4: Zavrsi implementaciju funkcije

    func sumNumbers() -> Int{
        let array = ["1","3","frog","5","grandmother"]
        var sum = 0
        let integerArrey = array.map{Int($0)}
        print(integerArrey)
        for item in integerArrey {
            sum += item ?? 0
        }
        return sum
}
 print("suma = \(sumNumbers())")

//Zadatak 5: Napravi funkciju koja predstavlja deciju igru kamen papir makaze.
//Funkcija ima da ulazna parametra(Dva igraca) a rezultat te funkcije je Int, pri
//cemu je 0- igra je neresena, 1 - pobedio je igrac 1. , 2 - pobedio je igrac 2


enum Property : Equatable {
    case kamen
    case papir
    case makaze
    
}


func playGame (player1: Property, player2: Property) -> Int {
    
    var result = 0
    
    if player1 == Property.kamen && player2 == Property.makaze {
            result = 1
    } else if player1 == Property.kamen && player2 == Property.kamen {
            result = 0
    } else if player1 == Property.kamen && player2 == Property.papir {
            result = 2
    }
    if player1 == Property.makaze && player2 == Property.papir {
            result = 1
    } else if player1 == Property.makaze && player2 == Property.makaze {
            result = 0
    } else if player1 == Property.makaze && player2 == Property.papir {
            result = 2
    }
    if player1 == Property.papir && player2 == Property.kamen {
            result = 1
    } else if player1 == Property.papir && player2 == Property.papir {
            result = 0
    } else if player1 == Property.papir && player2 == Property.makaze {
            result = 2
    }
    
    return result
}

playGame(player1: .kamen, player2: .makaze)


func playGamer (player1: Property, player2: Property) -> Int {
    
    var result = 0
    if player1 == player2 {
        return 0
    }
    
    
    switch player1 {
    case .makaze:
        result = player2 == Property.papir ? 1 : 2
    case .papir:
        result = player2 == Property.makaze ? 2 : 1
    case .kamen:
        result = player2 == Property.makaze ? 1 : 2
        
    }
    return result
}
playGamer(player1: .kamen, player2: .makaze)
    
    
    


