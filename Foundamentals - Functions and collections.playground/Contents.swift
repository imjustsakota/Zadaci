import UIKit

//1. Napisi funkciju koja iz niza Int? ispisuje vrednosti.....a) Koristi optional binding b) Koristi guard statement

var niz : [Int]?
//Dusan: Add to function
func optionalBinding () {
    if let someValue = niz?.first {
        print(someValue)
    }
    else {
        print("No elements in niz")
    }
}
func nestedFunction(){
    let a = true
    let b = false
    let c = a && b
    
    if a {
        if b {
            if c{
                
            }
        }
    }
    
    guard c else {
        fatalError("Error!!!")
    }
}

func guardFunc () {
    guard let someValuee = niz?.first
        else { print("No elements in niz")
            return
    }
    print(someValuee)
}

//2. Napisi funkciju koja ce pronaci najduzu rec u stringu (npr. "Hello word , i have a question)

var word = "Hello aaaaaaaaa world, i have a ques423423452342tion?"
var wordExampleEmpty = "    "
let nizOfWord = word.components(separatedBy: .whitespaces)

func longestWord (randomWord: String) {
    
    guard !randomWord.isEmpty else {
        print("Please enter the sentance")
        return
    }
  
    let nizOfWord = randomWord.components(separatedBy: .whitespaces)
    print(nizOfWord.count)
    var longestWord : String = ""
    for i in nizOfWord {
        if i.count > longestWord.count {
            longestWord = i
        }
    }
    print("Longest word is \(longestWord) with number of character \(longestWord.count)")
}
longestWord(randomWord: word)
longestWord(randomWord: wordExampleEmpty)


//4. Iz niza integera napravi niz koji ima jedinstvene vrednosti

let newArrey = [1,2,3,4,1,6]
let unique = Array(Set(newArrey))
//Dusan: Add this to function
func uniqueArrey (arrey: [Int]) {
    let newArrey = Array(Set(arrey))
    print(newArrey)
}
print(unique)
//5. Pronadji koja rec iz zadatog texta sadrzi najvise samoglasnika...a)Text podeliti na reci b) Reci podeliti na slova
var samoglasnici = ["a","e","i","o","u"]
//tekst podeljen u niz od reci
for character in nizOfWord {
    var maxCounter = 0
    //Prebaci niz u slova
    let chars = character.map({String($0)})
    for item in chars {
            for i in samoglasnici {
                if item == i {
                maxCounter += 1
                continue
            }
        }
    }
    print("\(character) ima \(maxCounter)")
}

let exampleSentence = "Hello this is computer with vowels wit lot of aaaaaa and iiii and oooo and some otheeeeer worrrdddss"
func calculateWordWithMostVowels(sentence: String) -> Int{
    //Swap to arrey of strings
    var longestCounOfCharacters = ""
    for item in exampleSentence.components(separatedBy: .whitespaces) {
        let filterWord = item.filter { (character) -> Bool in
            //print("Charatcter in closure: \(character)")
            return samoglasnici.contains(String(character))
        }
        if filterWord.count > longestCounOfCharacters.count {
            longestCounOfCharacters = filterWord
        }
    }
    print("Najvise samoglasnika ima \(longestCounOfCharacters) sa \(longestCounOfCharacters.count) samoglasnika")
    return longestCounOfCharacters.count
    
}

calculateWordWithMostVowels(sentence: exampleSentence)

/*6. Dictionary:
 a) Napravi dictionray koji ce sadrzati podatke o uceniku - ime, prezime razred, prosecna ocena
 b) Napisi funkciju koja ce se na osnovi zadatog parametra ( ime prezime razred prosecna ocena) ispisivati " Ucenik (ime)(prezime) je (razred) razred, sa prosecnom ocenom (prosecna ocena)
*/

var student =  ["ime":"Chris",
               "prezime":"Brown",
               "razred":"Osmi",
               "prosecna ocena": "Tri"
                ]

func printStudent (student:[String:String]) {
    if let name = student["ime"],
        let lastName = student["prezime"] ,
        let grade = student["razred"] ,
        let average = student["prosecna ocena"] {
        print("Ucenik \(name) \(lastName) je \(grade) razred sa prosecnom ocenom \(average) ")
    } else {
        print("error")
    }
}

printStudent(student: student)
