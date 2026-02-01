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
let array = createArrayWithRandomeInt(10)
print(array)
let newArray = extractNumbersBiggerThen50(array)
print(newArray)
