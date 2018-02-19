//==============================
// MARK: - Parameters
//==============================
var price = 1499.0
var money = 0.0
var barn = ["milk": 0.0, "whool": 0.0, "wheat": 0.0]
//==============================
// MARK: -Activities
//==============================
func feedingAnimals() {
    money -= 4
}
func sell() {
    money += barn["wheat"]! * 0.30
    money += barn["whool"]! * 1
    money += barn["milk"]! * 0.50
    
    print("\n"
        + "\nVous avez recolté \(barn["wheat"]! * 0.30)€ en vendant \(barn["wheat"]!) bottes de blé"
        + "\nVous avez recolté \(barn["whool"]! * 1)€ en vendant \(barn["whool"]!) pelottes de laine"
        + "\nVous avez recolté \(barn["milk"]! * 0.50)€ en vendant \(barn["milk"]!) bidons de lait"
        + "\nTOTAL: \(money)€ en comptant l'argent depensé pour la nourriture.")
    barn = ["milk": 0.0,"wheat": 0.0,"whool": 0.0]
}
func milkCows(quantity: Double) {
        barn["milk"]! += quantity
}
func mowSheep(quantity: Double) {
    barn["whool"]! += quantity
}
func harvest(quantity: Double) {
    barn["wheat"]! += quantity
}
//==============================
// MARK: - Conversation
//==============================

func homePage() {
    print("\n"
        + "Que voulez vous faire ?"
        + "\n"
        + "\n1. 🤸 Enregistrer une nouvelle activité"
        + "\n2. 🏦 Consulter ma banque"
        + "\n3. 🏠 Consulter ma grange"
        + "\n")
    //the user makes his choice
    if let choice = readLine() {
        
        switch choice { //SWITCH 'only if the user has chosen choice 1 on the home page'
            
        case "1":
            activityTodayPage()
            //The user makes his choice
            
        case "2": //Amount of money in the bank
            print("\n"
                + "Votre banque contient \(money) euros !")
            
        case "3": //contents of the barn
            print("\n"
                + "Votre grange contient:"
                + "\n- \(barn["milk"]!) bidons de lait"
                + " \n- \(barn["wheat"]!) bottes de blé"
                + "\n- \(barn["whool"]!) pelottes de laine")
        default:
            print("\n"
                + "Je ne comprends pas.")
            
        }
    }
}

func activityTodayPage() {
    print("\n"
        + "Qu'avez-vous fait aujourd'hui ?!"
        + "\n1. 🥕 J'ai nourrit mes animaux"
        + "\n2. 💰 J'ai vendus mes produits"
        + "\n3. 🐄 J'ai trait mes vaches"
        + "\n4. 🌾 J'ai moissonné"
        + "\n5. 🐑 J'ai tondu mes moutons"
        + "\n6. ⬅️ Retour à l'acceuil"
        + "\n")
    
    if let choice = readLine() {
        switch choice { // SWITCH 'only if the user has chosen choice 1 on the home page'
        case "1": //Feed the animals 'only if the user has chosen choice 1 on the home page'
            feedingAnimals()
            print("\n"
                + "Super !")
        case "2": //Sell the products of the barn 'only if the user has chosen choice 1 on the home page'
            sell()
            print("\n"
                + "Super !")
        case "3": //Milking cows 'only if the user has chosen choice 1 on the home page'
            print("\n"
                + "combien de bidons de lait avez-vous recolté ?")
            if let choice = readLine() {
                if let choiceNumber = Double(choice) {
                    milkCows(quantity: choiceNumber)
                    print("\n"
                        + "Ok c'est noté")
                } else {
                    print("\n"
                        + "Désoler je n'ai pas compris !")
                }
            }
        case "4": //Harvest bales of wheat 'only if the user has chosen choice 1 on the home page'
            print("\n"
                + "Combien de bottes de blé avez-vous recolté ?")
            if let choice = readLine() {
                if let choiceNumber = Double(choice) {
                    harvest(quantity: choiceNumber)
                    print("\n"
                        + "Ok c'est noté")
                } else {
                    print("\n"
                        + "Désoler je n'ai pas compris !")
                }
            }
        case "5": //Sheep shearing 'only if the user has chosen choice 1 on the home page
            print("\n"
                + "Combien de pelottes de laine avez-vous recolté ?")
            if let choice = readLine() {
                if let choiceNumber = Double(choice) {
                    mowSheep(quantity: choiceNumber)
                    print("\n"
                        + "Ok c'est noté")
                } else {
                    print("\n"
                        + "Désoler je n'ai pas compris !")
                }
            }
        case "6": //view the home page 'only if the user has chosen choice 1 on the home page'
            print("\n"
                + "retour à la page d'acceuil")
        default: //only if the user has chosen choice 1 on the home page
            print("\n"
                + "Je ne comprends pas.")
        }
    }
}

//loop that displays "homepage()" continuously
while true {
    homePage()

}
