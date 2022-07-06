import UIKit
import MapKit

/*
Replacer "Hasan2Salak-OsmanDÖRT"
replace -> string alıyor bide int alıyor ve girilen string içinden verilen int değerini replace ediyor.
replace -> string alıyor bide string alıyor ve girilen string içinden verilen string değerini replace ediyor
replace -> string alıyor bide string alıyor ve girilen string içinden verilen string değerini replace ediyor ve replace edilen karakter sayısını print ediyor
*/



                                                                                                                         //OVERLOADİNG


class Remover {
    
    func remove(text:String,sayı:Int)->String{
        return text.replacingOccurrences(of: String(sayı), with: "")
        
    }
    func remove(text:String,text2:String)->String{
        return text.replacingOccurrences(of: text2, with: "")
        
    }
    func remove(text:String,text3:String)->String{
        let replace = text.replacingOccurrences(of: text3, with: "")
        print(text.count-replace.count)
        return replace
    }
}


let remover = Remover()
remover.remove(text: "Hasan2Salak-OsmanDÖRT", sayı: 2)

remover.remove(text: "Hasan2Salak-OsmanDÖRT" , text2 : "Salak")

remover.remove(text:"Hasan2Salak-OsmanDÖRTHasan" , text3:"Hasan")



class Calculater {
    
    func sum(sayı1:Int,sayı2:Int)->Int{
        return sayı1 + sayı2
    }
    func sum(sayı1:Int, sayı2:Float)->Float{
        return Float(sayı1) + sayı2
    }
    func sum(sayı1:Float, sayı2:Int)->Float{
        return sayı1 + Float(sayı2)
        
    }
    func sum(sayı1:Float, sayı2:Float)->Float{
        return sayı1 + sayı2
    }
    
    //*********
    
    func substraction(sayı1:Int,sayı2:Int)->Int{
        return sayı1 - sayı2
    }
    func substraction(sayı1:Int, sayı2:Float)->Float{
        return Float(sayı1) - sayı2
    }
    func substraction(sayı1:Float, sayı2:Int)->Float{
        return sayı1 - Float(sayı2)
    }
    func substraction(sayı1:Float, sayı2:Float)->Float{
        return sayı1 - sayı2
    }
    
    //**********
    
    func divider(sayı1:Int,sayı2:Int)->Int{
        return sayı1 / sayı2
    }
    func divider(sayı1:Int, sayı2:Float)->Float{
        return Float(sayı1) / sayı2
    }
    func divider(sayı1:Float, sayı2:Int)->Float{
        return sayı1 / Float(sayı2)
    }
    func divider(sayı1:Float, sayı2:Float)->Float{
        return sayı1 / sayı2
    }
    
    //***********
    
    func multiplicition(sayı1:Int,sayı2:Int)->Int{
        return sayı1 * sayı2
    }
    func multiplicition(sayı1:Int, sayı2:Float)->Float{
        return Float(sayı1) * sayı2
    }
    func multiplicition(sayı1:Float, sayı2:Int)->Float{
        return sayı1 * Float(sayı2)
    }
    func multiplicition(sayı1:Float, sayı2:Float)->Float{
        return sayı1 * sayı2
    }
    
}

let calculate = Calculater()

calculate.sum(sayı1:12,sayı2:5.6)
print(calculate.sum(sayı1:12,sayı2:5.6))
 
calculate.divider(sayı1: 5.8, sayı2:2)

calculate.multiplicition(sayı1: 5.3, sayı2: 7)



                //KASIM ADALAN OOP KONU ANLATIMI BENİM NOTLARIM
 

struct Urun{
    var ad:String?
    var fiyat:Double?
}

class Araba {
    var renk:String?
    var kapasite:Int?
}



var laptop = Urun()

var bmw = Araba()

laptop.ad = "macbook"
laptop.fiyat = 20.000

print(laptop.ad!) // ! işareti ile unwrap yaptık cunku tipi konusunu class icinde ? ile optional belirtmiştik.
print(laptop.fiyat!)

laptop.fiyat = 30.000
print(laptop.fiyat!) // fiyat güncellenmiş hali cıktı.


bmw.renk = "kırmızı"
bmw.kapasite = 4

print(bmw.kapasite!)
print(bmw.renk!)

//optional yapıyı unwrap yapmak icin if let yapmak daha dogrudur. asagıdaki gibi.

if let temp = bmw.renk{
    print(temp)
}


var tv = Urun()

tv.ad = "Samsung"
tv.fiyat = 69.5755

var limuzun = Araba()

limuzun.renk = "Beyaz"
limuzun.kapasite = 10

print(tv.fiyat!)
print(limuzun.renk!)



// ARABA ANOLOJİSİ



class Car {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    
    func calistir(){
        calisiyorMu = true
    }
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    func hizlan(kacKm:Int){
        hiz! += kacKm //hız = hız + kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    func bilgiAl(){
        print("Renk : \(renk!)")
        print("Hız : \(hiz!)")
        print("Çalışıyor mu? : \(calisiyorMu!)")
    }
}


var mercedes = Car()

mercedes.hiz = 180
mercedes.renk = "Black"
mercedes.calistir()
mercedes.bilgiAl()
mercedes.durdur()
mercedes.bilgiAl()
mercedes.calistir()
mercedes.hizlan(kacKm: 100)
mercedes.yavasla(kacKm: 20)
mercedes.bilgiAl()


// Otobus Analojisi


class Otobus {
    var kapasite:Int?
    var nereden:String?
    var nereye:String?
    var mevcutYolcu:Int?
    
    
    func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
        
        if (mevcutYolcu! >= yolcu){
            print("Otobuste bu sefer için yer kalmamıştır")
        }
    }
    func yolcuIndir(yolcu:Int){
        mevcutYolcu! -= yolcu
        
    }
    func bilgiAl(){
        print("Kapasite : \(kapasite!)")
        print("Nereden : \(nereden!)")
        print("Nereye : \(nereye!)")
        print("Yolcu Sayısı : \(mevcutYolcu!)")
    }
}

var kamilKoc = Otobus()

kamilKoc.kapasite = 50
kamilKoc.nereden = "İstanbul"
kamilKoc.nereye = "Bursa"
kamilKoc.mevcutYolcu = 30

kamilKoc.bilgiAl()
kamilKoc.yolcuAl(yolcu: 10)
kamilKoc.bilgiAl()
kamilKoc.yolcuIndir(yolcu: 20)
kamilKoc.bilgiAl()
kamilKoc.yolcuAl(yolcu: 31)
kamilKoc.bilgiAl()


//-------------Lazy Özelliği
//depolama anlamında kullanırız.

class Ornek {
   lazy var no = 39 //lazy let ile kullanılmaz.
}

var nesne1 = Ornek()

print(nesne1.no)



//--------Hesaplama Özelliği

//örn GET:

class Matematik{
    var x = 10
    var y = 20
    var phoneNumber = "+905386295428"
    var formattedPhoneNumber:String{
        get{
            return "burada phoneNumber formatlanacak degerler olur"
        }
    }
    var topla:Int{
        get{//işlemin sonucunu almak için kullanılır. Claasmdaki ozellikleri bozmadan yeni özellik eklemek için kullanırım.
            return x + y
        }
    }
}
var nesne = Matematik()
print(nesne.topla)

//örn SET:

class Maas{
    var maas = 10000.0
    var bonus = 1.10
    
    var haftalikMaasHesapla:Double{
        get{
            return (maas*bonus)/52
        }
        set(yeniHaftalikfMaas){
            self.maas = yeniHaftalikfMaas * 52
        }
    }
}
var m = Maas()
print(m.haftalikMaasHesapla) //metodlarla karıstırma, metod olsa () olurdu.
m.haftalikMaasHesapla = 600 //set oldugu için yeni maas icin ona esitledik
print(m.maas)


//------------------FONSKİYONLAR

// func fonksiyon adı (parametre) -> dönüş türü { dönüş türü olmak zorunda değildir
//kodlama buraya yazılır
// return dönüş değeri
// }

// iki tür fonk var. Geri dönüş değeri olan(return) ve olmayan

func selamla() -> String{
    let sonuc = "Merhaba Büşra"
    return sonuc
}
let gelenSonuc = selamla()
print(gelenSonuc)

//parametre alması
//geri dönüş değeri yok
func selamla(isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}

selamla(isim :"Büşra")
//*******
func toplama(){
    let toplam = 30 + 40
    print("Toplam : \(toplam)")
}
toplama()
//********
func toplama1()->Int{
    let toplam = 30 + 40
    return toplam
}
var t1 = toplama1()
print("Toplam : \(t1)")

//***
func toplama2(sayı1:Int,sayı2:Int)->Int{
    let toplam = sayı1 + sayı2
    return toplam
}
var t3 = toplama2(sayı1: 1, sayı2: 2)
print(t3)


class Math{
    func topla(sayı1:Int,sayı2:Int){
        let toplam = sayı1 + sayı2
        print("Toplam : \(toplam)")
    }
    func cıkar(sayı1:Double,sayı2:Double)->Double{
        return sayı1 - sayı2
    }
    func carpma(sayı1:Int, sayı2:Int, isim:String){
        let sonuc = sayı1 * sayı2
        print("Çarpma yapan \(isim) Sonuç: \(sonuc)")
    }
    func bol(sayı1:Double,sayı2:Double) -> String {
        return "Bölme : \(sayı1/sayı2)"
    }
}

var hesapla = Math()

hesapla.topla(sayı1: 10, sayı2: 20)
var c = hesapla.cıkar(sayı1: 100.0, sayı2: 40.0)
print("Sonuc :\(c)")
hesapla.carpma(sayı1: 30, sayı2: 20, isim: "Büşra")
print(hesapla.bol(sayı1: 100.0, sayı2: 50.0))



//------------overloading

//aynı isimdeki metodlar farklı parametre tipleri ile birden fazla kullanılabilir.
/*
class Calculater {
    
    func sum(sayı1:Int,sayı2:Int)->Int{
        return sayı1 + sayı2
    }
    func sum(sayı1:Int, sayı2:Float)->Float{
        return Float(sayı1) + sayı2
    }
    func sum(sayı1:Float, sayı2:Int)->Float{
        return sayı1 + Float(sayı2)
        
    }
    func sum(sayı1:Float, sayı2:Float)->Float{
        return sayı1 + sayı2
    }
}
*/



//-----------Variadic Parametre
/*stenildiği kadar veri girilen parametre*/

func toplamVariadic(sayilar : Int...)->Int{
    var toplam = 0
    for i in sayilar{
        toplam += i
    }
    return toplam
}
var v1 = toplamVariadic(sayilar: 1,2,3,4,5)
print(v1)
var v2 = toplamVariadic(sayilar: 36,37,80,40)
print(v2)




//--------Birden Fazla Dönüş Değeri Olan Fonksiyonlar --Swifte Özel

func islem(sayılar:[Int])->(toplam:Int,çarpma:Int){
    var toplam = 0
    var carpma = 1
    for i in sayılar{
        toplam += i
        carpma *= i
    }
    return (toplam,carpma)
}
var dizi = [1,2,3,4,5]

let sonuc = islem(sayılar: dizi)
print(sonuc.toplam)
print(sonuc.çarpma )




//---------fonk geri dönüş değerinin optional olması
func hesapla(sayi1:Int,sayı2:Int)->(Int?){
    let sonuc = sayi1 * 2 + sayı2*4
    return sonuc
}

var a = hesapla(sayi1: 10, sayı2: 20)

print("sonuc : \(a!)") // a'yı ! ile unwrap yaptık. if let ile de yapabiliriz.

if let t = a {
    print("sonuc: \(t)")
}


//----------Birden fazla Parametre ismi verme:

func hesapla(sayi1 s1:Int,sayi2 s2:Int)->Int{
    let sonuc = s1*2 + s2*4
    return sonuc
}

var h = hesapla(sayi1: 30, sayi2: 40)
print("sonuc : \(h)")


//--------Initialization - (Constructor)--------


//iki şekilde init oluşturuluyor aslında. Eğer initin içi boş ise her zaman ki class yapısı ile objeme deger atarım.
//ama classımı initin içine oluşturursam direkt olarak objeyi değer atayarak verebilirim. Self kullanılır. Shadowing

class Kisiler{
    var ad:String?
    var yas:Int?
    init(){
        
    }
    init(ad:String, yas:Int) {
        self.ad = ad
        self.yas = yas

    }
}

let kisi1 = Kisiler()
kisi1.ad = "Büşra"
kisi1.yas = 24
print(kisi1.ad!)


let kisi2 = Kisiler(ad:"Güneş", yas:24)  //INITIALIZATION YAPISI BU.
print(kisi2.ad!)
print(kisi2.yas!)


/*-------CLASS İLE STRUCTURE ARASINDAKİ FARK
 
-Class referans tipidir.
-Structure değer tipidir.
-Structure'nin kalıtım yani inheritance özelliği yoktur. o yuzden class daha kullanıslıdır.
 
 Ref. Tipi: Bir değeri iki farklı yerde kulllandığımızda değişiklik vb. durumlar söz konusu oldugunda her iki yer de bu değişiklikten etkilenir.
 Değer Tipi: Bir değeri iki farklı yerde kulllandığımızda değişiklik vb. durumlar söz konusu oldugunda her iki yer de bu değişiklikten etkilenmez.
 
 */
class Ogrenci{
    var ad:String?
}

var ogrenci1 = Ogrenci()
ogrenci1.ad = "Büşra"

var ogrenci2 = ogrenci1
ogrenci2.ad = "Ayşe"

//Artık öğrenci1'deki ad da ayşe oldu. cunku class yapısı kullandık.

struct Kopek{
    var renk:String?
}

var kopek1 = Kopek()
kopek1.renk = "Sarı"

var kopek2 = kopek1
kopek2.renk = "Beyaz"

print(kopek1.renk!)
print(kopek2.renk!)
//burada renkler değişmedi cunku struct kullandık.


//-----------IMPORT :

//Import ile gerekli olan sınıfları import edeceğiz. framework kullanmak için. orn : import mapKit kulllanmak için onu import etmeliyiz.


//----------STATİK DEĞİŞKENLER VE METODLAR:

// Static ile değişken tanımlarsak nesne olusturmadan direkt olarak class'ın içindeki değişken ve metodlara erişim sağlayabiliyoruz. ancak sık kullanımda perf. etkiler.

class Asinifi{
    static var x = 10
    static func metod(){
        print("merhaba")
    }
}
Asinifi.x
Asinifi.metod()


//---------ENUMERATİON:

//sonrasında bak.








//----------COMPOSITION:

class Kisilerr{
    var ad:String?
    var yas:Int?
    /*var il:String?
    var ilce:String?        burada bunları kullanmak güzel bir kodlama değil. bunun yerine il ve ilçe için baska bir class olusturup burada onu ref almak daha mantıklı.  */
    var adres:Adres?
    
    init(ad:String,yas:Int,adres:Adres) {
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
    
}


class Adres{
    var il:String?
    var ilce:String?
    init(il:String, ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

let adres = Adres(il: "İstanbul", ilce: "Zeytinburnu")
let kisi = Kisilerr(ad: "Büşra", yas: 24, adres: adres)

print("Kişi adres :\(kisi.adres!.il!)")


//öncelikle alt sınıfları oluşturmak daha mantıklı olacaktır.

class Kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String) {
        self.kategori_ad = kategori_ad
        self.kategori_id = kategori_id
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String) {
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}

class Filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
}
}

var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")
var k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")

var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Nuri Bilge Ceylan")
var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quetin Tarantino")
var y3 = Yonetmenler(yonetmen_id:3, yonetmen_ad: "Christopher Nolan")

var f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y2)
var f2 = Filmler(film_id: 2, film_ad: "Inception", film_yil: 2006, kategori: k3, yonetmen: y3)

print("Film id: \(f1.film_id!)")
print("Film ad: \(f1.film_ad!)")
print("Film yıl: \(f1.film_yil!)")
print("Film kategori: \(f1.kategori!.kategori_ad!)")
print("Film yonetmen: \(f1.yonetmen!.yonetmen_ad!)")


//genellikle veritabanlarında kullanırız.


//----------------------------------------------INHERITANCE(MİRAS-KALITIM)-------------------------------
/*
 -Bir class özelliklerini baska bir sınıfa aktarabilir.
 
 Aktaran class = superclass
 Alt class = subclass
 
 -Bir class sadece bir classtan kalıtım alabilir. Birden fazla classtan kalıtım alamaz.
 */

class Arac {
    var renk:String?
    var vites:String?
    
    init(renk:String, vites:String) {
        self.renk = renk
        self.vites = vites
    }
}

class Araba1:Arac{
    var kasaTipi:String?
    
    init(kasaTipi:String,renk:String,vites:String) {
        self.kasaTipi = kasaTipi
        super.init(renk:renk, vites:vites)
    }
}

class Honda:Araba1{
    var model:String?
    
    init(model:String,kasaTipi:String,renk:String,vites:String) {
        self.model = model
        super.init(kasaTipi: kasaTipi, renk: renk, vites: vites)
    }
}

var araba = Araba1(kasaTipi: "Sedan", renk: "Beyaz", vites: "Otomatik")

var arac = Arac(renk: "Kırmızı", vites: "Manuel")



//INHERITANCE EXAMPLE:

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int, pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi:pencereSayisi)
    }
}

class Villa:Ev{
    var garajVarmi:Bool?
    
    init(garajVarmi:Bool, pencereSayisi:Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 30)
var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 10)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

