import UIKit

//soru 1:

var evenNumbers = [Int]()

for i in 1...100{
    print(i)
    let result = i % 2
    if result == 0 {
        evenNumbers.append(i)
    }
}
print(evenNumbers)




// soru 2:

var kazanılanParalar:[Int] = [60000 , 120000]
var sortedKazanılanParalar = kazanılanParalar.sorted(by: >)
sortedKazanılanParalar.remove(at: 0)
var result = Double(sortedKazanılanParalar[0])


if result < 600000 {
    let vergi1 = result * 0.08
    print(vergi1)
}
else{
    let vergi2 = result * 0.20
    print(vergi2)
}

//ödev sorusu 3

var numbers = [Int]()

for _ in 1...10{
    let randomNumber = arc4random_uniform(100000)
    print(randomNumber)
    numbers.append(Int(randomNumber)) // Uınt32 türünde oldugu için int yaptık
}
print("orjinal" , numbers)

for (index,i) in numbers.enumerated(){
    if i % 2 == 0{
        numbers.insert(i + Int(arc4random_uniform(100000)), at: index )
        numbers.remove(at: index + 1)
        print("bu" ,numbers)
    }
    
}

// w3resource örnekler

//1-: Write a Swift program to check if 5 appears as either the first or last element in a given array of integers. The array length should be 1 or more


//2: Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.

var array:[Int] = [12,14,222,20,5,12]

if array[0] == array[array.count-1]{
    print("dizinin ilk elemanı eşittir son elemanına.")
}else{
    print("dizinin ilk elemanı eşit değildir son elemanına.")
}

//3: Write a Swift program to test if two given arrays of integers have the same first and last element. Both arrays length must be 1 or more.

var array1:[Int] = [2,3,4,7,9,0,6]
var array2:[Int] = [1,3,70,59,3,6]

if array1.first == array2.first && array1.last == array2.last{
 print("dizinin ilk ve son elemanları aynıdır.")
}else if array1.first == array2.first && array1.last != array2.last{
    print("dizinin ilk elemanı aynıdır, son elemanları farklıdır.")
}else if array1.first != array2.first && array1.last == array2.last{
    print("dizinin ilk elemanı farklıdır, son elemanları aynıdır.")
}else{
    print("dizinin ilk elemanı da son elemanı da farklıdır.")
}

//4 : Write a Swift program to compute the sum of all the elements of a given array of integers and length 4.
var sum = 0
let valueArray:[Int] = [1,4,7,9,4,6,7]
var lenght = valueArray.count

for i in valueArray{
 sum += i
}
print(sum)
print(lenght)


//5-) iyi bir dev olursan sen de bu soruyu cözebilirsin.. :)


//6-) bir dizinin elemanlarını ters cevir yeni diziye ekle

//1.yol

var sampleArray = [3,10,7,8]
var newArray:[Int] = []

for i in stride(from: sampleArray.count-1, to: -1, by: -1){
    print("bu",sampleArray[i]) ;newArray.append(Int(sampleArray[i]))
}
print("sonuc",newArray)

//2. yol
sampleArray.reverse()
print("2.yol",sampleArray)



// soru 7 : Write a Swift program to find the larger value of a given array of integers and set all the other elements with that value. Return the changed array.

var arraySample = [5,7,12,53,6,5,9,0,3]

var maxValue = arraySample.max()
print(maxValue!)

for (index, _) in arraySample.enumerated(){
arraySample[index] = maxValue!
}
print("ahanda bu ->",arraySample)


//soru 8 : Write a Swift program to compute the sum of the first 2 elements of a given array of integers. Return 0 if the length of the given array is 0 and return the first element value If the array length is less than 2

var arraySample2 = [5,7,12,53,6,5]
var arraySample3 = [Int]()
var arraySample4 = [2]
let sumArray = arraySample2[0] + arraySample2[1]
print(sumArray)

func getResult(array:[Int])->Int{
    
    if array.isEmpty {
         return 0
    }else if array.count < 2 {
         return array[0]
    }else{
        return -1
    }
}
getResult(array:arraySample2)
getResult(array:arraySample3)
getResult(array: arraySample4)

// soru 9 : Write a Swift program to create a new array of length 2 containing the middle elements from two give array of integers and length 3.



// 10. Write a Swift program to create a new array of length 2 containing the first and last elements from a given array of integers. The given array length must be 1 or more.

func soru10( arr: [Int]) -> [Int] {
    var new_array: [Int] = []
    
    new_array.append(arr[0])
    new_array.append(arr.last!)
    
    return new_array
}
var ornekArr = [1, 2, 3, 4]
soru10(arr:ornekArr)

//11. Write a Swift program to test if an array of integers contains a 3 or a 5

func testArr(a:[Int])->Bool{
    if a.contains(3) || a.contains(5){
        return true
    }else{
        return false
    }
}
