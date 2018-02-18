var price = 1499.0
var money = 0.0
var barn = ["milk": 0.0, "whool": 0.0, "wheat": 0.0]

func sell() {
    money += barn["wheat"]! * 0.30
    
    print("Vous avez recolté \(barn["wheat"]! * 0.30)€ en vendant \(barn["wheat"]!) bottes de blé")
    
    money += barn["whool"]! * 1
    
    print("vous avez recolté \(barn["whool"]! * 1)€ en vendant \(barn["whool"]!) pelottes de laine")
    
    money += barn["milk"]! * 0.50
    
    print("vous avez recolté \(barn["milk"]! * 0.50)€ en vendant \(barn["milk"]!) bidons de lait")
    
    
    barn = ["milk": 0.0,"wheat": 0.0,"whool": 0.0]
    
    print("vous avez recolté \(money)€ au total")
}
func milkCows() {
    barn["milk"]! += 30
}
func mowSheep() {
    barn["whool"]! += 30
}
func harvest() {
    barn["wheat"]! += 100
}
func homePage() {
    print("Que voulez vous faire ?"
        + "\n1. 🤸 Enregistrer une nouvelle activité"
        + "\n2. 🏦 Consulter ma banque"
        + "\n3. 🏠 Consulter ma grange")
}

//display the home page at launch
print("Que voulez vous faire ?"
    + "\n1. 🤸 Enregistrer une nouvelle activité"
    + "\n2. 🏦 Consulter ma banque"
    + "\n3. 🏠 Consulter ma grange")

while money < price {
    
//the user makes his choice
if let choice = readLine() {
    
    switch choice { //SWITCH 'only if the user has chosen choice 1 on the home page'
        
    case "1":
        print("Qu'avez-vous fait aujourd'hui ?!"
        + "\n1. 🥕 J'ai nourrit mes animaux"
        + "\n2. 💰 J'ai vendus mes produits"
        + "\n3. 🐄 J'ai trait mes vaches"
        + "\n4. 🌾 J'ai moissonné"
        + "\n5. 🐑 J'ai tondu mes moutons"
        + "\n6. ⬅️ Retour à l'acceuil")
        //The user makes his choice
        if let choice = readLine() {
            
        switch choice { // SWITCH 'only if the user has chosen choice 1 on the home page'
            
        case "1": //Feed the animals 'only if the user has chosen choice 1 on the home page'
            money -= 4
             print("Super !")
        case "2": //Sell the products of the barn 'only if the user has chosen choice 1 on the home page'
            sell()
             print("Super !")
        case "3": //Milking cows 'only if the user has chosen choice 1 on the home page'
            milkCows()
             print("Super !")
        case "4": //Harvest bales of wheat 'only if the user has chosen choice 1 on the home page'
            harvest()
             print("Super !")
        case "5": //Sheep shearing 'only if the user has chosen choice 1 on the home page
            mowSheep()
            print("Super !")
        case "6": //view the home page 'only if the user has chosen choice 1 on the home page'
            homePage()
        default: //only if the user has chosen choice 1 on the home page
            print("Je ne comprends pas.")
        }
        }
    case "2": //Amount of money in the bank
        print("Votre banque contient \(money) euros !")
    case "3": //contents of the barn
        print("Votre grange contient:"
        + "\n- \(barn["milk"]!) bidons de lait"
        + " \n- \(barn["wheat"]!) bottes de blé"
        + "\n- \(barn["whool"]!) pelottes de laine")
    default:
        print("Je ne comprends pas.")
    }
}
}
