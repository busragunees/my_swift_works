import UIKit
//if else ile alakalı 2 adet örnek aşağıdadır.

//Not Hesaplama
/*
 Not 0-20 -> FF 21 -49 DD 50 -69 CC 70 - 89 BB 90 - 100 AA
 */

let examNote:Double = 95

if(examNote >= 0 && examNote <= 20){
    print("notunuz: FF")
}else if(examNote >= 21  && examNote <= 49){
    print("notunuz: DD")
}else if(examNote >= 50 && examNote <= 69){
    print("notunuz: CC")
}else if(examNote >= 70 && examNote <= 89){
    print("notunuz: BB")
}else{
    print("notunuz:AA", "Tebriklerrrr", separator: ",")
}

print(examNote)


/*Motorlu taşıtlar vergisi hesaplama
 
 Tip: Binek Araç ise tutar 100 TL
 
 Ticari Araç ise tutar 150 TL
 -----------------------------------------------
 Yaş: 1-3 yaş ise tutar 1,75 ile çarpılacak
 
 4-7 yaş ise tutar 1,50 ile çarpılacak
 
 7 yaşından büyük ise 1,25 ile çarpılacak
 -----------------------------------------------
 Hacim: 0-1300 arasında ise 2 ile çarpılacak
 
 1300-1600 arasında ise 3 ile çarpılacak
 
 1600- 2000 arasında ise 4 ile çarıpılacak
 
 2000 den büyük ise 5 ile çarpılacak.
 */

let carType =   "Ticari"
let carYear = 2000
let volume = 1600
var amount = 0.0

if(carType == "Binek"){
    amount = 100
}else{
    amount = 150
}
let carYearDiff = 2022-carYear

//Yıla göre vergi çarpanlarını hesaplayıp amount'a ekledik.
if(carYearDiff >= 1 && carYearDiff <= 3){
    amount *= 1.75
}else if(carYearDiff >= 4 && carYearDiff <= 7){
    amount *= 1.50
}else if (carYearDiff>7){
    amount *= 1.25
}
// Hacim'e göre vergi çarpanlarını hesaplayıp amount'a ekledik.
if(volume >= 0 && volume<=1300){
    amount *= 2
}else if(volume > 1300 && volume <= 1600){
    amount *= 3
} else if(volume > 1600 && volume <= 2000){
    amount *= 4
}else{
    amount *= 5
}
print("Aracınızın vergisi : ",amount)


//Ternary Conditionals

//• Koşul ? Doğru Sonuç : Yanlış Sonuç

let isFavorite = false
isFavorite ? print("Favorilerde") : print("Favori değil.")

//switch kullanımı

let day = 8

switch day {
    
case 1 :
    print("Monday")
case 2 :
    print("Tuesday")
case 3:
    print("Wednesday")
case 4:
    print("Thursday")
case 5:
    print("Friday")
case 6:
    print("Saturday")
case 7 :
    print("Sunday")
default :
    print("Hiçbir gün sensiz güzel değil!")
}

//Switch değişken ataması
let month = 2
var selectedMonth:String { switch month {
case 1: return "Ocak"
case 2: return "Şubat"
default:
   return "yok"
}}

print(selectedMonth)



