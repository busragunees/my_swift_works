import UIKit

//---***Array Methods***---


var dizi1 = [Int]()

var dizi2 : [Float] = [10.0,20.0,30.0]

var dizi3 = [Int](repeating: 0, count: 3) // [0,0,0]

var meyveler:[String] = ["çilek","muz","elma","kivi","kiraz"]

for meyve in meyveler{
    print(meyve)
}

for (index,meyve) in meyveler.enumerated(){
    print("indeks :\(index) Eleman: \(meyve)")
}

meyveler.append("karpuz")
meyveler += ["mandalina"]
meyveler[2] = "ananas"

print(meyveler)


meyveler.insert("portakal", at: 3) //3.index'e portakal ekledik.
meyveler.isEmpty //boolean değerdir. dizi eleman içerir mi, boş mu diye sorduk.
meyveler.count // dizide kaç eleman var diye sorduk.
meyveler.first // dizinin ilk elemanını sorduk.
meyveler.last // dizinin son elemanını sorduk.
meyveler.contains("kiraz") //dizi kiraz değerini içerir mi diye sorduk.
meyveler.max() // dizinin en büyük elemanını sorduk.
meyveler.min() // dizinin en küçük elemanını sorduk.
meyveler.reverse() // dizinin elemanlarını ters çevirdik.
meyveler.sort() // dizide sıralama yapar. içeriğine göre sıralar. stringse harfsel int ise numaraya göre.
//Türkçe karakterler genelde en sona atılır.
meyveler.remove( at: 2) // kirazı silmesi gerekir.
print(meyveler)
meyveler.removeAll() // tüm değerleri siler.
print(meyveler)


//sık kullanılanlar:
//genelde append kullanılır. insert cok sık kullanılmaz. genelde sonuna ekleriz. count methodu kullanılır. boyutuna göre işlem içir. contain kullanılır. silme kullanılırç



//ARRAY FİLTRELEME
//arama işlemlerinde genelde filtrelemeler kullanılır.

var sayilar = [1,2,3,4,5,6,7,8,9,10]

var sonuc1 = sayilar.filter({$0>7})    // dolar işareti yanına sıfır $0 dizi elemanlarından her birini temsil eder.
print(sonuc1)

var sonuc2 = sayilar.filter({$0<7})
print(sonuc2)

var sonuc3 = sayilar.filter( {$0>3 && $0<7})
print(sonuc3)


//Array Examples:



//Average Calculation

var numbers = [30,40,70,100,50,80,90,50,70,40]
var total = 0

for i in numbers{
    total = total + i
}
print("total: \(total)")
print("Avarage: \(total/numbers.count)")


//Change Content
 
var numbers2 = [1,2,3,4,5]

for (index,s) in numbers2.enumerated(){
    let result = s * 2
    numbers2[index] = result
}
print(numbers2)
// verilerin yerini değiştirip 2 ile carpıp tekrar diziye koyacagız.
// önce 2 ile carpmayı nasıl yapabiliriz onu dusunmeliyiz.
// bir de yerini değiştirmemiz gerektiği icin index numarası gerekiyor. bu da enumerated ile olur.




//Example of odd and even numbers:

var numbers3 = [1,4,67,42,89,90,54,12,65,73,64,87]

var oddNumbers = [Int]()
var evenNumbers = [Int]()

for i in numbers3{
    let result2 = i % 2
    
    if result2 == 0 {
        evenNumbers.append(i)
    }
    if result2 == 1{
        oddNumbers.append(i)
    }
}

print("Odd Numbers : \(oddNumbers)")
print("Even Numbers : \(evenNumbers)")




//random number generation:


var numbers4 = [Int]()

for _ in 1...10{
    let randomNumber = arc4random_uniform(10)
    print(randomNumber)
    numbers4.append(Int(randomNumber)) // Uınt32 türünde oldugu için int yaptık
}
numbers4.sort()
print(numbers4)

//2.method

var numberss = [Int]()

for _ in 1...10{
    let randomNumber2 = Int.random(in: 0...9) // burada ekstra int a cevirme yapmadan rastgele sayı aldık int olarak.
    numberss.append(randomNumber2)
}
numberss.sorted()
print(numberss)



//report card application ( karne uygulaması ):

var notes = [Int]()
var lessons = [String]()

lessons.append("Tarih")
notes.append(20)

lessons.append("Phisic")
notes.append(80)

lessons.append("Math")
notes.append(100)

lessons.append("Biology")
notes.append(40)

//20 80 100 40

var totalNotes = 0

for i in 0...(notes.count-1){                       //notes.count-1 diyerek dinamik bir sekle soktuk.
    print("\(lessons[i]) : \(notes[i])")
    totalNotes = totalNotes + notes[i]              //240 olur
}
print("Avarage:\(totalNotes/lessons.count)")       //not ortalaması hesapladık.



// Name Search :

var names = ["Ahmet", "Mehmet", "Zeynep", "Serhat", "Kadir", "Ahmet"]
var controlName = "Ahmet"

for i in names{
    print(i)
    if i == controlName{
        print("bu isim dizide mevcuttur.")
        break //eger aynı isimden iki tane varsa iki kere calısmaması icin döngüyü bitirdik.
    }
}





// SET YAPISI


//burada append methodu yerine insert methodu var. insert ile veri eklenir.

var array1 = Set <Int>()

var array2:Set = ["Bursa","İstanbul","Ankara" ,"Ankara"]
var array3:Set<Float> = [10.0, 20.0, 30.0 ]


var fruits:Set = ["Çilek","Muz","Elma","Kivi","Kiraz"]

for i in fruits{
    print(i)
}


for (index,fruit) in fruits.enumerated(){
    print("\(index) \(fruit)")
}   // index kullanmak pek tercih edilmez.


fruits.insert("Karpuz")
fruits.insert("Armut")
fruits.insert("Muz")
print(fruits)

fruits.count
fruits.contains("Muz")
fruits.max()
fruits.min()
fruits.removeAll()


 //set yapısına özgü methodlar

let tekler:Set = [1,3,5,7,9]
let ciftler:Set = [0,2,4,6,8]
let asal:Set = [2,3,5,7]

let arrayy = tekler.union(ciftler).sorted()
print(arrayy)

let arrayy1 = tekler.intersection(ciftler).sorted()
print(arrayy1)

let arrayy2 = tekler.subtracting(asal).sorted()
print(arrayy2)

let arrayy3 = tekler.symmetricDifference(asal).sorted()
print(arrayy3)



//Dictionary Yapısı


// 3 sekilde kullanılabilir.
var dict1 = [Int:String]()
var dict2 = [3.14:"Pi",2.71:"e"]
var dict3:[Int:String] = [1:"Bir", 2:"İki",3:"Üç"]


//örnek
var cityies = [16:"Bursa", 34:"İstanbul", 06:"Ankara"]

// diziye asagıdaki gibi veri ekleyebiliriz.
cityies[35] = "İzmir"
cityies[10] = "Balıkesir"
print(cityies)

//veri güncelleme
cityies[16] = "Yeni Bursa"
cityies.updateValue("Yeni İzmir", forKey: 35)
print(cityies)

//silme

cityies.removeValue(forKey: 35)
print(cityies)


//iki farklı diziyi birleştirip dictionary yapma:

var dersler = ["Kimya","Matematik","Edebiyat"]
var notlar = [50,80,70]

var dersNotları = Dictionary(uniqueKeysWithValues: zip(notlar,dersler))
print(dersNotları)

//dizi parcalama
var urunFiyatları:[Double:String] = [15.99:"Kitap", 59.99:"T-shirt", 239.99:"Saat"]

var fiyatlar = [Double](urunFiyatları.keys)
var urunler = [String](urunFiyatları.values)

print(fiyatlar)
print(urunler
)


//Dictionary Filtreleme

var okul:[Int:String] = [154:"Ahmet", 67:"Mehmet", 871:"Zeynep",45:"Ahmet"]

var sonucA = okul.filter({$0.key>70})
print(sonucA)

var sonucB = okul.filter({$0.value == "Ahmet"})
print(sonucB)

var sonucC = okul.filter({$0.value == "Ahmet" && $0.key>70})
print(sonucC
)


//Dict. Karne Uygulaması :

var derslerNotlar = [String:Int]()
derslerNotlar["Tarih"] = 20
derslerNotlar["Fizik"] = 80
derslerNotlar["Matematik"] = 100
derslerNotlar["Kimya"] = 50
derslerNotlar["Biyoloji"] = 40

var toplamdersNotu = 0

for (ders,not) in derslerNotlar{
    print("\(ders) : \(not)")
    toplamdersNotu = toplamdersNotu + not
}
print("ortalama : \(toplamdersNotu/derslerNotlar.count)")



