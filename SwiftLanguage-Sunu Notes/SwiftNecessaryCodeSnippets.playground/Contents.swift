import UIKit


//Rasgele sayı üretmek

let randomNumber = Int.random(in: 0...9)
let randomDouble = Double.random(in: 1...100)

// Tarihler

let date = Date() // "May 5, 2022 at 7:42 PM"

let calendar = Calendar.current // Takvim türü gregorian vs

let year = calendar.component(.year, from: date) // 2022
let month = calendar.component(.month, from: date) // 5. ay -> 5
let minute = calendar.component(.minute, from: date) // eklenen date objesinin temsil ettiği tarihteki saatin dakikasını verir
