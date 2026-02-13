import Darwin

/// Create array with numbers in a range 0 - 100
/// - Parameter elementCount: element's count of an array
/// - Returns: array of `Int`
func createArrayWithRandomeInt(_ elementCount: Int) -> [Int] {
    var array: [Int] = []
    let rangeBegin = 0
    let rangeEnd = 100
    for _ in 0..<elementCount {
        let newElement = Int.random(in: rangeBegin...rangeEnd)
        array.append(newElement)
    }
    return array
}

/// Create array with numbers in a certan range
/// - Parameters:
///   - elementCount: element's count of an array
///   - rangeBegin: first number of a range
///   - rangeEnd: last number of a range
/// - Returns: array of `Int`
func createArrayWithRandomeInt(_ elementCount: Int,
                               from rangeBegin: Int,
                               to rangeEnd: Int) -> [Int] {
    var array: [Int] = []
    for _ in 0..<elementCount {
        let newElement = Int.random(in: rangeBegin...rangeEnd)
        array.append(newElement)
    }
    return array
}

/// Create array with numbers in a certan range. Number of elements is randome
/// - Parameters:
///   - rangeBegin: first number of a range
///   - rangeEnd: last number of a range
/// - Returns: array of `Int`
func createArrayWithRandomeInt(from rangeBegin: Int,
                               to rangeEnd: Int) -> [Int] {
    var array: [Int] = []
    let elementCount = Int.random(in: 1...50)
    for _ in 0..<elementCount {
        let newElement = Int.random(in: rangeBegin...rangeEnd)
        array.append(newElement)
    }
    return array
}

/// Get a number from user
/// - Returns: `Int`
func getUserNumber (_ message: String) -> Int {
    print(message)
    let userNumber = readLine() ?? ""
    guard let userNumber = Int(userNumber) else {
        print("This is not a number. Try again.")
        exit(0)
    }
    return userNumber
}

/// Find min number in array
/// - Parameter array: array of `Int`
/// - Returns: `Int`
func findMinNumberInArray (_ array: [Int]) -> Int {
    var minNumber = Int.max
    for element in array{
        if element < minNumber {
            minNumber = element
        }
    }
    return minNumber
}

/// Power by two even numbers of an array
/// - Parameter array: array of `Int`
/// - Returns: new array of `Int`
func powerEvenNumbers (_ array: [Int]) -> [Int] {
    var newArray: [Int] = []
    for i in 0..<array.count {
        if array[i] % 2 == 0 {
            newArray.append(array[i] * array[i])
        } else {
            newArray.append(array[i])
        }
    }
    return newArray
}

/// Delete even numbers from array
/// - Parameter array: array of `Int`
/// - Returns: new array of odd `Int`
func deleteEvenNumbers (_ array: [Int]) -> [Int] {
    var array = array
    var i = array.count - 1
    while i >= 0 {
        if array[i] % 2 == 0 {
            array.remove(at: i)
        }
        i -= 1
    }
    return array
}

/// Create new array contained numbers bigger then 50
/// - Parameter array: original array of `Int`
/// - Returns: new array of `Int` bigger then 50
func extractNumbersBiggerThen50 (_ array: [Int]) -> [Int] {
    var newArray: [Int] = []
    for element in array {
        if element > 50 {
            newArray.append(element)
        }
    }
    return newArray
}

/// Sort array deccending
/// - Parameter array: original array of `Int`
/// - Returns: new descending order array of `Int`
func sortArrayDescending (_ array: [Int]) -> [Int] {
    var array = array
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] > array[j] {
                let temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
    return array
}

/// Find middle element in array of `Int`
/// - Parameter array: original array of `Int`
/// - Returns: array with one middle element if original array has even count of element, otherwise array with two elements
func findMiddleElement (_ array: [Int]) -> [Int] {
    var middleEelements: [Int] = []
    let midElementIndex = array.count / 2
    middleEelements.append(array[midElementIndex])
    if array.count % 2 == 0 {
        middleEelements.append(array[midElementIndex - 1])
    }
    
    return middleEelements
}

/// sort array of `Int` descending by using bubble algorythm
/// - Parameter array: original array of `Int`
/// - Returns: new descending order array of `Int`
func sortArrayDescendingBubble (_ array: [Int]) -> [Int] {
    var array = array
    for i in 0..<array.count {
        for j in 0..<(array.count-i-1) {
            if array[j] < array[j+1] {
                array.swapAt(j, j+1)
            }
        }
    }
    return array
}

/// Sort two original arrays by two new arrays: one for even numbers, one for odd numbers
/// - Parameters:
///   - arrayA: original array of `Int`
///   - arrayB: original array of `Int`
/// - Returns: array of two arrays: first with even numbers, second with odd numbers
func sortTwoArreysByEvenAndOdd (_ arrayA: [Int], _ arrayB: [Int]) -> [[Int]]{
    var evenArray: [Int] = []
    var oddArray: [Int] = []

    var i = 0
    while i < arrayA.count {
        let element = arrayA[i]
        element % 2 == 0 ? evenArray.append(element) : oddArray.append(element)
        i += 1
    }
    
    var j = 0
    while j < arrayB.count {
        let element = arrayB[j]
        element % 2 == 0 ? evenArray.append(element) : oddArray.append(element)
        j += 1
    }
    
    return [evenArray, oddArray]
}

// Заполнить массив сотней элементов
// let array = createArrayWithRandomeInt(100)

// Заполнить массив случайными данными в диапазоне от 57 до 148
//let array = createArrayWithRandomeInt(100, from: 57, to: 148)

//Заполнить массив случайным количеством случайных чисел, диапазон выберете сами
//let array = createArrayWithRandomeInt(from: 10, to: 20)

// Получить от пользователя число и заполнить массив количеством случайных чисел равным полученному числу
// let userNuber = getUserNumber("Please, input a number.")
// let array = createArrayWithRandomeInt(userNuber)

// Получить от пользователя два числа а и b. Заполнить массив случайными числами где длинна массива равна а, а случайные числа создаются в диапазоне от 0 до b.
// let arrayLength = getUserNumber("Please, input the number of elements")
// let rangeEnd = getUserNumber("Please, input the possible biggest element")
// let array = createArrayWithRandomeInt(arrayLength, from: 0, to: rangeEnd)

// Найти наименьший элемент в массиве
// let array = createArrayWithRandomeInt(10)
// let number = findMinNumberInArray(array)
// print(array)
// print(number)

// Возвести все четные значения в массиве в квадрат
// let array = createArrayWithRandomeInt(10)
// let newArray = powerEvenNumbers(array)
// print(array)
// print(newArray)

// Удалить четные числа из массива используя цикл while двигаясь от конца массива к началу
//let arra = createArrayWithRandomeInt(10)
//print(arra)
//let newArray = deleteEvenNumbers(arra)
//print(newArray)

// Cформировать новый массив из тех элементов старого, которые меньше 50
// let array = createArrayWithRandomeInt(10)
// print(array)
// let newArray = extractNumbersBiggerThen50(array)
// print(newArray)

// Отсортировать массив по возрастанию
// let array = createArrayWithRandomeInt(10)
// print(array)
// let sortedArray = sortArrayDescending(array)
// print(sortedArray)

// Найти такой элемент массива, что бы половина значений была больше него, а половина меньше. Например в массиве [61, 48, 83, 66, 76, 51, 67, 48, 47, 73] это 61 или 66. Возможно два варианта, так как массив содержит четное количество элементов.
// var array = createArrayWithRandomeInt(4)
// print(array)
// var newArray = sortArrayDescending(array)
// print(newArray)
// let middleElement = findMiddleElement(newArray)
// print(middleElement)

// Отсортировать массив по убыванию используя алгоритм сортировки пузырьком
//let array = createArrayWithRandomeInt(5)
//print(array)
//let newArray = sortArrayDescendingBubble(array)
//print(newArray)

// Дано два массива случайно длинны, со случайными числами. Написать функцию, которая с использованием while чётные числа записывает из 2х массивов записывает в первый массив, а нечётные - во второй
//let arrayA = createArrayWithRandomeInt(4)
//print(arrayA)
//let arrayB = createArrayWithRandomeInt(6)
//print(arrayB)
//let result = sortTwoArreysByEvenAndOdd(arrayA, arrayB)
//print(result[0])
//print(result[1])
