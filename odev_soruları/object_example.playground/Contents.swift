import UIKit

/**
Word word -> string, meaning -> string, pronunciation -> string
1. -> cat, kedi, ket
2. -> love, aşk, lav
3. -> alive, canlı, elayv
sort ingilizce harf sırasına göre
sort türkçe harf sırasına göre
print tüm değerler.
**/

class Word {  // burda obje tanımladık. objeler class ile tanımlanır. bas harfi büyük.
    var word:String
    var meaning:String
    var pronounciation:String
    init(word:String, meaning:String, pronunciation:String) { // init deme : obje icindeki değişkenlere deger atamak icin.
        self.word = word
        self.meaning = meaning
        self.pronounciation = pronunciation
    }
    func toString()->String{
        return ("word:\(word), meaining:\(meaning), pronounciation:\(pronounciation)")
    }
}
var word1 = Word(word:"cat",meaning:"kedi",pronunciation: "ket")
var word2 = Word(word: "love",meaning: "aşk",pronunciation: "lav")
var word3 = Word(word: "alive",meaning: "canlı",pronunciation: "elayv")

/**
 print("bu", word1) ---> word1 objesinin referans degerini yazar.
 print(word1.toString()) ---> toSring fonksiyonuna word1 objesinin degiskenlerini yazdıgımız icin objenin değişkenlerinin degerlerini görebiliriz.
 */
print("bu", word1)
print(word1.toString())



var array = [Word]() // Word tipinde bos array
array.append(word1)
array.append(word2)
array.append(word3)

let englishWordSort = array.sorted(by: {$0.word < $1.word})
for englishWordSort in englishWordSort {
    print(englishWordSort.toString())
}

print("*********")

let turkishWordSort = array.sorted(by: {$0.meaning < $1.meaning})
for turkishWordSort in turkishWordSort {
    print(turkishWordSort.toString())
}
