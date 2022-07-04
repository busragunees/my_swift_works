import UIKit

var greeting = "Hello, playground"

for index in 1...5 { //1 2 3 4 5
    print(index)
}

print("-----------------------------------------")


for index2 in 1..<5{ // 1 2 3 4
    print(index2)
}
print("-----------------------------------------")

for index3 in stride(from: 0, through: 20, by: 5){ //(başlangıç, bitiş, artış miktarı) 0 5 10 15 20
    print(index3)
}

print("-----------------------------------------")
// Bitiş değeri dahil olmadan for döngüsü

for index4 in  stride(from: 0, to: 20, by: 5){ // (başlangıç, bitiş, artış) 0 5 10 15
    print(index4)
}


print("-----------------------------------------")

var stringArray = ["Büşra","Hasan","Küçük"]
for( index5, value) in stringArray.enumerated(){
    print(index5,value)
}

print("-----------------------------------------")

var whileIndex = 1
while whileIndex < 5{

    print(whileIndex)
    whileIndex += 1
}

print("-----------------------------------------")

var whileIndex2 = 1

while whileIndex2 < 5 {
    
    if(whileIndex2 == 3){
        break // ile döngü kırılır | Continue : İşlemi pas geçer.
    }
    print(whileIndex2)
    whileIndex2 += 1
}


print("-----------------------------------------")


 
