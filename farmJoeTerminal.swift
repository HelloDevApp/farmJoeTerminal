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
    //We sell all the merchandise
    money += barn["milk"]! * 0.50
    money += barn["wheat"]! * 0.30
    money += barn["whool"]! * 1
    
    //Money obtained during the sale
    let totalSold = barn["milk"]! * 0.50 + barn["wheat"]! * 0.30 + barn["whool"]! * 1
    
    print("\n"
        + "Vous avez recolté \(barn["milk"]! * 0.50)€ en vendant \(barn["milk"]!) bidons de lait"
        
        + "\nVous avez recolté \(barn["wheat"]! * 0.30)€ en vendant \(barn["wheat"]!) bottes de blé"
        
        + "\nVous avez recolté \(barn["whool"]! * 1)€ en vendant \(barn["whool"]!) pelottes de laine"
        
        + "\nArgent obtenus durant la vente: vous avez vendu pour un total de \(totalSold)€ de marchandises!")
    
    //We empty the barn
    barn = ["milk": 0.0,"wheat": 0.0,"whool": 0.0]
}


func milkCows(retrieving quantity: Double) {
        barn["milk"]! += quantity
}

func harvest(retrieving quantity: Double) {
    barn["wheat"]! += quantity
}

func mowSheep(retrieving quantity: Double) {
    barn["whool"]! += quantity
}
//==============================
// MARK: - Conversation
//==============================
func typeSelection(type: String) -> Double? {
    print("\n"
        + "combien de \(type) avez-vous recolté ?")
    
    if let choice = readLine() {
        if let choiceNumber = Double(choice) {
            return choiceNumber
        }
    }
    print("je n'ai pas compris.")
    return nil
}

func homePage() {
    print("\n"
        + "Que voulez vous faire ?"
        + "\n"
        + "\n1. 🤸 Enregistrer une nouvelle activité"
        + "\n2. 🏦 Consulter ma banque"
        + "\n3. 🏠 Consulter ma grange"
        + "\n")
    //The user makes his choice
    if let choice = readLine() {
        
        switch choice { //SWITCH 'only if the user has chosen choice 1 on the home page'
        case "1":// activity Today Page
            activityTodayPage()
        case "2": //Amount of money in the bank
            print("\n"
                + "Votre banque contient \(money) euros !")
        case "3": //Contents of the barn
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
        switch choice {
        case "1": //Feed the animals if the user choses 1
            feedingAnimals()
            print("\n"
                + "Super !")
        case "2": //Sell the products of the barn if the user chooses 2
            sell()
            print("\n"
                + "Super !")
        case "3": //Milking cows if the user chooses 3
            if let quantity = typeSelection(type: "lait") {
                milkCows(retrieving: quantity)
            }

        case "4": //Harvest bales of wheat if the user chooses 4
            if let quantity = typeSelection(type: "blé") {
                harvest(retrieving: quantity)
            }
        case "5": //Sheep shearing if the user has chooses 5
            if let quantity = typeSelection(type: "laine") {
                mowSheep(retrieving: quantity)
            }
        case "6": //Back to the home page if the user has chooses 6
            print("\n"
                + "retour à la page d'acceuil")
        default: //Only if the user entered an incorrect value
            print("\n"
                + "Je ne comprends pas.")
        }
    }
}
//Loop that displays "homepage()" continuously
while true {
    homePage()
}

