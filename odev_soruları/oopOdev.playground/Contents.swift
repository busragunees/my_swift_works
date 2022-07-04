import UIKit
import Foundation

//ODEV SORULARI

//SORU 1:

func degreeConvertor(degree:Double)->Double{
    return degree * 1.8 + 32
}

degreeConvertor(degree: 30.6)

//SORU 2

func rectangle(kısaKenar ks:Double,uzunKenar uz:Double)->Double{
    return (ks+uz)*2
}

rectangle(kısaKenar: 10.5, uzunKenar: 20.5)

//SORU 3
var factorialResult = 1
func factorial(sayı:Int)->Int{
    for i in 1...sayı{
        factorialResult *= i
    }
    return factorialResult
}

factorial(sayı:5)


//SORU 4
var counter = 0
func characterConvertor(word:String,character:Character){
    for i in word{
        print("bu i",type(of: i))
        if(i == character){
            counter += 1
        }
    }
}
characterConvertor(word: "büşraa", character: "a")
print()
// Bir string'i for ile elemanlarını aldığımızda dönen her eleman (yani i) string.element(character) olarak döner.



//SORU 5
let MAX_STANDART_DAY = 20
let DAİLY_WAGES = 80 //günlük kazanç
let SHIFT_WAGES = 160 //mesaili günlük kazanç
//160 saat 20 gün demek

func salaryCalculator(day:Int){
    if(day <= 20){
    let earnMoney = DAİLY_WAGES * day
       print(earnMoney)
    }
    else if(day > 20 ){
        let newMoney = DAİLY_WAGES * MAX_STANDART_DAY + (day - MAX_STANDART_DAY) * SHIFT_WAGES
        print(newMoney)
    }
}

salaryCalculator(day: 18)
salaryCalculator(day: 30)
salaryCalculator(day: 20)



/* BİR BASKA COZUM :
 
 let MAX_STANDART_DAY = 20
 let DAILY_STANDART_AMOUNT = 80
 let DAILY_SHIFT_AMOUNT = 160

 func getDailyStandartAmount(day:Int) -> Int{
 return day * DAILY_STANDART_AMOUNT
 }

 func getDailyShiftAmount (day:Int ) ->Int{
 return day * DAILY_SHIFT_AMOUNT
 }

 func getEarnMoney(day:Int)-> Int{
 let standartDay = day < MAX_STANDART_DAY ? day : MAX_STANDART_DAY
 let shiftDay = day - standartDay

 return getDailyStandartAmount(day: standartDay) + getDailyShiftAmount(day: shiftDay)
 }


 getEarnMoney(day: 10)
 */




//ssatli hali
/*let MAX_WORK_TIME = 160
 let HOURLY_STANDART_AMOUNT = 10
 let HOURLY_SHIFT_AMOUNT = 20

 func getHourlyStandartAmount(hour:Int)->Int{
 return hour * HOURLY_STANDART_AMOUNT
 }

 func getHourlyShiftAmount(hour:Int)->Int{
 return hour * HOURLY_SHIFT_AMOUNT
 }
 func getHourlyEarnMoney(hour:Int)->Int{
 let standartHour = hour < MAX_WORK_TIME ? hour : MAX_WORK_TIME
 let shiftHour = hour - standartHour

 return getHourlyStandartAmount(hour:standartHour) + getHourlyShiftAmount(hour:shiftHour)
 }

 getHourlyEarnMoney(hour: 162)*/


//SORU 5

//kenar sayısı bilinen iç açı toplam formülü= (n-2).180

func interiorAngleTotal(numberOfSides:Int){
    let angleTotal = (numberOfSides-2)*180
    print("The sum of the interior angles of a \(numberOfSides) sided polygon is \(angleTotal).")
}

interiorAngleTotal(numberOfSides:3)



//soru 6

var gbCost:Double = 50 / 100 //1 gb ücreti
var exceedCost:Double = 4

func internetCost(GB:Double)->Double{
    
    if(GB > 50*Double(gbCost)){
       let exceedTotalCost = (GB * gbCost) + ((GB-50) * exceedCost)
        return exceedTotalCost
    }
    else if(GB<=50){
        let totalCost = GB * Double(gbCost)
        return totalCost
    }
    return 0
}

internetCost(GB: 40)
