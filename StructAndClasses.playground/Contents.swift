import UIKit

// Zadatak 1
/*
    Ovde dve funkcije printaju elemente iz niza ako postoji njihova vrednost (ako nije nil).
Zbog cega su rezultati ove dve fukncije razliciti. Pronadji gresku i ispravi je
*/
print("----\nZadatak 1\n----")

//Dusan: **Solution
func printValueFromArrayOptionalBinding(array: [Int?]){
    print("****\nZadatak 1\nOptional binding\n****")
    for i in array{
        if let value = i {
            print("Int element is: \(value)")
        }
    }
}

func printValueFromArrayGuardStatement(array: [Int?]){
    print("****\nZadatak 1\nGuard statement\n****")
    for i in array{
        guard let value = i else{
            return
        }
        print("Int element is: \(value)")
    }
}

let exampleArrayOptionalInt = [1,3,nil,6,nil,nil, 10]
printValueFromArrayGuardStatement(array: exampleArrayOptionalInt)
printValueFromArrayOptionalBinding(array: exampleArrayOptionalInt)


//Zadatak 2:
/*
 !!! za ovaj zadatak koristiti klase !!!!
 Osmisli i napisi strukturu modela ucenika. Ucenici mogu da budu decaci i devojcice. Svi ucenici imaju ime i igraju fizicko. Decaci igraju na fizickom fudbal, a devojcice odbojku.
 kreiraj funkciju koja kao ulazni parametar ima niz ucenika, i na osnovu slucajnog odabira jednog ucenika, pozvace fukciju modela Ucenik "ucenik.igrajFizicko()", koja ce da ispise "{ime ucenika} igra {fudbal/odbojka)"
*/
print("----\nZadatak 2\n----")

//Zadatak 3:
/*
 !!! za ovaj zadatak koristiti strukture !!!!
 Osmisli i napisi strukturu modela ucenika. Ucenici mogu da budu decaci i devojcice. Svi ucenici imaju ime i igraju fizicko. Decaci igraju na fizickom fudbal, a devojcice odbojku.
 kreiraj funkciju koja kao ulazni parametar ima niz ucenika, i na osnovu slucajnog odabira jednog ucenika, pozvace fukciju modela Ucenik "ucenik.igrajFizicko()", koja ce da ispise "{ime ucenika} igra {fudbal/odbojka)"
*/
print("----\nZadatak 3\n----")
