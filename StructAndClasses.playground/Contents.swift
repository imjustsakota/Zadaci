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
            continue
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
class Student {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func playSport () -> String {
        return "Which sport"
    }
    
}
class Male: Student {
    
    override func playSport() -> String {
        
        return "Football"
    }
}
class Female: Student {
    
    override func playSport() -> String {
        return "Vooleyball"
    }
}


var pera = Male.init(name: "Pera")
var ana = Female.init(name: "Ana")
var mika = Male.init(name: "Mika")



func printStudent (students: [Student]) {
    let randomStudentIndex = Int.random(in: Range(uncheckedBounds: (0,students.count - 1)))
    let randomStudent = students[randomStudentIndex]
    print("\(randomStudent.name) igra \(randomStudent.playSport())")
}

printStudent(students: [pera,mika,ana])



//Zadatak 3:
/*
 !!! za ovaj zadatak koristiti strukture !!!!
 Osmisli i napisi strukturu modela ucenika. Ucenici mogu da budu decaci i devojcice. Svi ucenici imaju ime i igraju fizicko. Decaci igraju na fizickom fudbal, a devojcice odbojku.
 kreiraj funkciju koja kao ulazni parametar ima niz ucenika, i na osnovu slucajnog odabira jednog ucenika, pozvace fukciju modela Ucenik "ucenik.igrajFizicko()", koja ce da ispise "{ime ucenika} igra {fudbal/odbojka)"
*/
print("----\nZadatak 3\n----")

protocol StudentProtocol {
    var name: String { get set }
    func igrajFizicko () -> String
}

struct MaleStruct: StudentProtocol {
    var name: String
    
    func igrajFizicko() -> String {
        return "Football"
    }
    
}
struct FemaleStruct: StudentProtocol {
    var name: String
    
    func igrajFizicko() -> String {
        return "Vooleyball"
    }
}

var laza = MaleStruct(name: "Laza")
var marija = FemaleStruct(name: "Marija")
var ena = FemaleStruct(name: "Ena")




func printStudentStruct (students: [StudentProtocol]) {
    let randomStudentIndex = Int.random(in: Range(uncheckedBounds: (0,students.count - 1)))
    let randomStudent = students[randomStudentIndex]
    print("\(randomStudent.name) igra \(randomStudent.igrajFizicko())")
}

    
printStudentStruct(students: [laza,marija,ena])
    
    

