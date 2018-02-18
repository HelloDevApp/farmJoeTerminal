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

