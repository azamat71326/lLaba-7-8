//1
struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

var somePlace = GPS()


print("Исходные координаты:")
print("Широта: \(somePlace.latitude), Долгота: \(somePlace.longitude)")

// Изменение широты и долготы somePlace
somePlace.latitude = 51.514004
somePlace.longitude = 0.125226

// Вывод обновленных значений широты и долготы somePlace
print("\nОбновленные координаты:")
print("Широта: \(somePlace.latitude), Долгота: \(somePlace.longitude)")

//2


struct Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
    var price: Double = 0.0
}

var favoriteBook = Book()

print(" : \(favoriteBook.title)")

favoriteBook.title = "Эфект Плацебо"
favoriteBook.author = "Джо Диспенза"
favoriteBook.pages = 300
favoriteBook.price = 2590

print("\nФакты о любимой книге:")
print("Название: \(favoriteBook.title)")
print("Автор: \(favoriteBook.author)")
print("Количество страниц: \(favoriteBook.pages)")
print("Цена: \(favoriteBook.price)")

//3
struct RunningWorkout {
    var distance: Double = 0.0
    var time: Double = 0.0
    var elevation:Double = 0.0
}
var firstRun = RunningWorkout()


print("Расстояние: \(firstRun.distance) метров")
print("Время: \(firstRun.time) минут")
print("Высота подъема: \(firstRun.elevation) метров")

firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94

print("\nОтчет о тренировке:")
print("Расстояние: \(firstRun.distance) метров")
print("Время: \(firstRun.time) минут")
print("Высота подъема: \(firstRun.elevation) метров")

//4
struct GPS1 {
    var latitude: Double
    var longitude: Double
}

let someWhere = GPS1(latitude: 51.514004, longitude: 0.125226)

print("Широта: \(someWhere.latitude)")
print("Долгота: \(someWhere.longitude)")

//5
struct Book1 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
}

let favoriteBook1 = Book1(title: "Абай жолы", author: "М.Ауэзов", pages: 300, price: 3000)

print("Информация о моей любимой книге:")
print("Название: \(favoriteBook1.title)")
print("Автор: \(favoriteBook1.author)")
print("Количество страниц: \(favoriteBook1.pages)")
print("Цена: tg \(favoriteBook1.price)")

//6
struct Laptop {
    var screenSize: Int = 13
    var repairCount: Int = 0
    var yearPurchased: Int
    
    init(screenSize: Int = 13, repairCount: Int = 0, yearPurchased: Int) {
        self.screenSize = screenSize
        self.repairCount = repairCount
        self.yearPurchased = yearPurchased
    }
}

// Создание экземпляров Laptop с использованием инициализатора memberwise
let laptop1 = Laptop(screenSize: 15, repairCount: 2, yearPurchased: 2020)
let laptop2 = Laptop(screenSize: 14, repairCount: 1, yearPurchased: 2022)


//7
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(inches: Double) {
        self.heightInInches = inches
        self.heightInCentimeters = inches * 2.54
    }
    
    init(centimeters: Double) {
        self.heightInCentimeters = centimeters
        self.heightInInches = centimeters / 2.54
    }
}

let someonesHeight = Height(inches: 65)
print("Высота в сантиметрах: \(someonesHeight.heightInCentimeters)")

let myHeight = Height(centimeters: 170)
print("Моя высота в дюймах: \(myHeight.heightInInches)")


//8
struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}


let me = User(name: "Azamat", age: 31, height: 186.0, weight: 110.0, activityLevel: 9)

// Вывод информации о пользователе
print("Имя: \(me.name)")
print("Возраст: \(me.age) лет")
print("Рост: \(me.height) см")
print("Вес: \(me.weight) кг")
print("Уровень активности: \(me.activityLevel)/10")

//9
struct Distance {
    var meters: Double
    var feet: Double
    
    init(meters: Double) {
        self.meters = meters
        self.feet = meters * 3.28084
    }
    
    init(feet: Double) {
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

let mile = Distance(meters: 1600)
print("Расстояние в футах: \(mile.feet)")

let anotherDistance = Distance(feet: 5000)
print("Другое расстояние в метрах: \(anotherDistance.meters)")

//10
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}


var myPost = Post(message: "Привет, мир!", likes: 5, numberOfComments: 2)


print("Лайки до: \(myPost.likes)")


myPost.like()


print("Лайки после: \(myPost.likes)")

//11
struct RunningWorkout1 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats1() {
        print("Дистанция: \(distance) км")
        print("Время: \(time) мин")
        print("Подъем: \(elevation) м")
        
    }
}

let myWorkout1 = RunningWorkout1(distance: 5.2, time: 30, elevation: 50)


myWorkout1.postWorkoutStats1()

//12
struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var mySteps = Steps(steps: 5000, goal: 10000)

print("Шаги до: \(mySteps.steps)")

mySteps.takeStep()
print("Шаги после: \(mySteps.steps)")

//13
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        return width * height
    }
}

let myRectangle = Rectangle(width: 5, height: 10)

print("Площадь прямоугольника: \(myRectangle.area)")



//14


//16
struct RunningWorkout3 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    var averageMileTime: Double {
        let miles = distance / 1600
        return time / miles
    }
}

let myRunningWorkout3 = RunningWorkout3(distance: 3200, time: 1200, elevation: 50)

print("Среднее время прохождения мили: \(myRunningWorkout3.averageMileTime) секунд")

struct Steps3 {
    var steps: Int {
        willSet {
            if newValue == goal {
                print("Поздравляем! Вы достигли своей цели!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var mySteps3 = Steps(steps: 9999, goal: 10000)

mySteps.takeStep()

//17
struct User1 {
    var userName: String
    var email: String
    var age: Int
    
    static var currentUser: User1?
    
    static func logIn(user: User1) {
        currentUser = user
        if let currentUser = currentUser {
            print("\(currentUser.userName) вошел в систему.")
        }
    }
}

let user1 = User1(userName: "Alice", email: "alice@example.com", age: 30)
let user2 = User1(userName: "Bob", email: "bob@example.com", age: 25)


User1.logIn(user: user1)
User1.logIn(user: user2)
