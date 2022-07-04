import UIKit

var greeting = "Hello, playground"
print(greeting)

var greeting2 = "Hello, playground" ; print(greeting2) //iki tane ayrı iş yapan satırı tek satıra indirgemek istersek o zaman noktalı virgül kullanmalıyız (";").

//değişken oluşturma
var age = 24
print(type(of: age))
//tür belirteci ile değişken oluşturma
var age2:Int = 24

// Variable Tipleri

var number:Int = 1000 // artı ve eksiyi kapsar 0 dahil
var negativeNumber:Int = -1000
var positiveNumber:UInt = 1000 // UInt sadece pozitif 0 dahil
var weight:Double = 99.8 //Duble ondalıklı sayıları 15 digite kadar kabul eder.
var fahrenai:Float = 55.5 //Float ondalıklı sayıları 6 digite kadar kabul eder.


var title:String = "Swift Öğreniyorum"
var character:Character = "A" //tek harf alır. "Aa" yazamayız mesela.


var isFavorite:Bool = false

var height = 1.72 //Nokta ile verilen değerler tip belirtilmediyse default olrak double kabul edilir.
print(type(of: height)) //type ile değişkenin tipini kontrol ederiz.

//Örnek
var studentName:String = "Büşra"
var studentAge:Int = 24
var studentHeight:Double = 1.66
var studentFirstLetter:Character = "B"

// print kullanımı

print("hello world")
print(1.0,2.0,3.0)
print(5)
print("Hasan","Büşra","Furkan", separator: "-")

//Değişkenleri Print ile Yazdırma

var customerName = "Büşra"
var customerAge = 24
print("Müşteri Adı: \(customerName) \nMüşteri Yaşı: \(customerAge) ")


let teacherName = 25 //let ile tanımladığımız değişken const(sabit) türdedir. İçerisine tekrar değer ataması yapılamaz.
//teacherName = 32 ataması yapılamaz çünkü teacherName bir const yani let olarak tanımlanmış.
var teacherAge = 35
teacherAge = 28 // var ile tanımlanan değişkene türü ile ilgili atamalar yapılabilir.
//teacherAge = "yirmi sekiz" gibi string yani türü farklı atamalar yapılamaz.


//Constant(Sabitler)
//içerisine aldığı değer sonrasında değiştirilemez.
let ANIMATION_DURATION = 300  // İçerisine aldığı değer sonradan değiştirilemez.
let CONTACT_DATA = "CONTACT_DATA"


//Kaçış karakterleri
/*
 • \\ – \ işareti
 • \t – Bir tab boşluk bırakır
 • \n – Bir alt satıra iner
 • \” – Çift tırnak işareti
 • \’ – Tek tırnak işareti
 */
print("Hasanın \"sevgilisi\"")
print("Hasan\\Büşra")

//Tür Dönüşümleri

let santigrat = 35.2
let timestamp = "1651352141"
let fahrenait2:Float = 55.1

let santigratInt = Int(santigrat)//35
let timestampInt = Int(timestamp)//1651352141
let fahrenaitString = String(fahrenait2) //"55.1"

let santigratString = "35.2"
//let santigradInt = Int(santigratString)
if let santigradInt = Int(santigratString){ // santigratString çevrildiğinde nill gelmiyorsa if e düşer geliyorsa else düşer.
    print(santigradInt+2)
}else {
    print("String içerisinde nokta olduğu için int algılayamıyor.")
}

//Tuples
var user = ("Büşra","Küçük",24)
let userName = user.0
let userSurname = user.1

let (userInfoName, userInfoSurname,userInfoAge) = user
print("userInfoName : \(userInfoName)") //Büşra
print("userInfoAge : \(userInfoAge)")

print("Kullanıcı Adı : \(userName) \nKullanıcı Soyadı : \(userSurname)")

let contact = (name:"Hasan",surname:"Küçük")
print("Contact Name : \(contact.name) \nContact Surname : \(contact.surname)")


