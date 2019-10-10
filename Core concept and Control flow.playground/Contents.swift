import UIKit


//1. Napisi funkciju koja uzima svaki broj iz niza vraca njegov kvadrat
func multiply () {
    let nizKvadrat = [1,2,3,4,5,6]
    for item in nizKvadrat {
        let kvadrat = item * item
        print(kvadrat)
    }
}
multiply()

//2.Napisi funkciju koja uzima svaki broj sve dok prvi elemenat niza nije deljiv sa 7

func breakItem () {
let nekiNiz = [2,3,4,5,8,9,7,77,2,3,4]
    label_niz:for item in nekiNiz {
            if item % 7 == 0 {
            break label_niz
        }
        print(nekiNiz[item])
    }
}
breakItem()

//3. Napisi funkciju koja vraca obrnuti redosled niza

var niz1 = [1,2,3,4,5]
var niz2: [Int] = []
for (index, _) in niz1.enumerated() {
        niz2.append(niz1.count - index)
    }
print(niz2)

/*4. Napisi program koji simulira kartasku igru:
U opticaju su karte za igranje pokera kojih ima 32 (od 7 do 14). Svaka karta ima broj i znak. Program treba da izabere jednu random kartu a korisnik treba da je pogodi
igrac odabira 5 karata na pocetku, a rezultat programa je bool(true ili false da li je igrac pogodio kartu
 */

struct Card {
    var broj: Int
    var znak: Znak
    
    func printCard () {
        print("Broj karte je \(self.broj) i znak je: \(znak.rawValue)")
    }
}
enum Znak: String,CaseIterable {
    case herc
    case pik
    case tref
    case karo
}

func guesCard (cards: [Card]) -> Bool {
    
    let newCard = getRandomCard()
    newCard.printCard()
    for i in cards {
        if i.broj == newCard.broj && i.znak == newCard.znak {
            i.printCard()
            print("Bravo pobedili ste")
            return true
        }
    }
    print("Vise srece drugi put")
    return false
}

func getRandomCard() -> Card {
    Card(broj: Int.random(in: 7...14), znak: Znak.allCases.randomElement() ?? Znak.herc)
}
    
func getRandomCards (broj: Int) -> [Card] {
    var nizRandomCards: [Card] = []
    for _ in 0..<broj {
        nizRandomCards.append(getRandomCard())
    }
    return nizRandomCards
}
guesCard(cards: getRandomCards(broj: 5))


