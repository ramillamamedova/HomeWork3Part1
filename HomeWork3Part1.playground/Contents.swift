import UIKit

var greeting = "Hello, playground"

import Foundation

/*
 
 Home Work 3
 
 Part 1
 
 */

// Создание списка товаров (кортеж  для каждого товара)
typealias ProductInfo = (productName: String, price: Double, currency: String, socket: String, processor: String)

let cart: [ProductInfo] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socket: "sAM4", processor: "AMD")
]

// Пункт 1.1: Вывести всю информацию о товарах
for (index, product) in cart.enumerated() {
    print("""
    ------------------- \(index + 1) -------------------------------
    Назва товару: \(product.productName), Ціна: \(product.price) \(product.currency)
    Сокет: \(product.socket), Процессор: \(product.processor)
    ------------------------------------------------------
    """)
}

// Пункт 1.2: Вывести название товара и процессора
for (index, product) in cart.enumerated() {
    print("""
    ------------------- \(index + 1) -------------------------------
    Назва товару: \(product.productName)
    Процессор: \(product.processor)
    ------------------------------------------------------
    """)
}

// Пункт 1.3: Вывести название товара и цены
var index = 0
while index < cart.count {
    let product = cart[index]
    print("""
    ------------------- \(index + 1) -------------------------------
    Назва товару: \(product.productName)
    Ціна: \(product.price) \(product.currency)
    ------------------------------------------------------
    """)
    index += 1
}

// Пункт 1.4: Вывести название товара и сокет
var i = 0
repeat {
    let product = cart[i]
    print("""
    ------------------- \(i + 1) -------------------------------
    Назва товару: \(product.productName)
    Сокет: \(product.socket)
    ------------------------------------------------------
    """)
    i += 1
} while i < cart.count

import Foundation

// Псевдонім для зберігання деталей товару
typealias Product = (productName: String, price: Double, currency: String, socket: String, processor: String)

// Користувач в інтернет-магазині додав наступні товари у кошик:
let shop: [ProductInfo] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socket: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socket: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socket: "sAM4", processor: "AMD")
]

// Пункт 1.5: Вывести только те товары цена которых меньше 5000.00 и сокет "s1151"
for (index, product) in cart.enumerated() {
    if product.price < 5000.00 && product.socket == "s1151" {
        print("""
        ------------------- \(index + 1) -------------------------------
        Назва товару: \(product.productName), Ціна: \(product.price) \(product.currency)
        Сокет: \(product.socket)
        ------------------------------------------------------
        """)
    }
}

// Пункт 1.6: Использование оператора switch для проверки процессора товара (AMD или Intel)
for (index, product) in cart.enumerated() {
    switch product.processor {
    case "Intel":
        print("""
        ------------------- \(index + 1) -------------------------------
        Назва товару: \(product.productName), Ціна: \(product.price) \(product.currency)
        ------------------------------------------------------
        """)
    case "AMD":
        print("""
        ------------------- \(index + 1) -------------------------------
        Назва товару: \(product.productName), Ціна: \(product.price) \(product.currency)
        ------------------------------------------------------
        """)
    default:
        break
    }
}
// Кортеж для товаров
typealias ProductDetails = (productName: String, price: Double, currency: String, socet: String, processor: String)

// Массив товаров в корзине
let products: [ProductDetails] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socet: "sAM4", processor: "AMD")
]

// Функция для вывода товаров с процессором Intel
@MainActor
func printIntelProducts() {
    print("------------------- Intel -------------------------------")
    
    var index = 1
    for product in cart {
        if product.processor == "Intel" {
            print("\(index) Назва товару: \(product.productName)")
            index += 1
        }
    }
    
    print("------------------------------------------------------")
}

// Вызов функции
printIntelProducts()
import Foundation

/*
 Пункт 2.3
 Функция для нахождения самого дорогого товара с указанным процессором
*/

typealias ProductInformation = (productName: String, price: Double, currency: String, socet: String, processor: String)

let asus: [ProductInformation] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socet: "sAM4", processor: "AMD")
]

// Функция для нахождения самого дорогого товара с указанным процессором
@MainActor
func findMostExpensiveProduct(forProcessor processor: String) -> ProductInfo? {
    let filteredProducts = cart.filter { $0.processor == processor }
    
    guard let mostExpensive = filteredProducts.max(by: { $0.price < $1.price }) else {
        return nil
    }
    
    return mostExpensive
}

// Использование функции
if let mostExpensiveIntelProduct = findMostExpensiveProduct(forProcessor: "Intel") {
    print("------------------- Найдорожчий товар за процесором Intel -------------------------------")
    print("Назва товару: \(mostExpensiveIntelProduct.productName), Ціна: \(mostExpensiveIntelProduct.currency)\(mostExpensiveIntelProduct.price)")
    print("-----------------------------------------------------------------------------------------")
}


/*
 Розділ 3 - Перечислення / Enum
*/

// Пункт 3.1: Enum для процессора
enum ProcessorType: String {
    case intel = "Intel"
    case amd = "AMD"
}

// Пример использования
let processorType: ProcessorType = .intel
print("Выбран процессор: \(processorType.rawValue)")


/*
 Пункт 3.2: Enum для валюты
*/

enum Currency: String {
    case uah = "UAH"
    case usd = "USD"
    case eur = "EUR"
}

// Пример использования
let currencyType: Currency = .uah
print("Выбрана валюта: \(currencyType.rawValue)")


/*
 Розділ 4 - Структуры и классы
*/

// Пункт 4.1: Структура для материнской платы
struct MotherBoard {
    var socet: String
    var processor: ProcessorType
}

/*
 Пункт 4.2: Класс для описания товара
*/

class Computer {
    var name: String
    var price: Double
    var currency: Currency
    var motherboard: MotherBoard
    
    init(name: String, price: Double, currency: Currency, motherboard: MotherBoard) {
        self.name = name
        self.price = price
        self.currency = currency
        self.motherboard = motherboard
    }
}

// Пример использования
let motherboard = MotherBoard(socet: "s1151", processor: .intel) // Инициализация материнской платы
let product = Computer(name: "Asus WS C246 Pro", price: 10979.0, currency: .uah, motherboard: motherboard)

print("Продукт: \(product.name), Цена: \(product.price) \(product.currency.rawValue), Сокет: \(product.motherboard.socet), Процессор: \(product.motherboard.processor.rawValue)")

// Изменение значений
product.price = 9999.0
product.currency = .usd
product.motherboard.socet = "s1151"
product.motherboard.processor = .intel

print("Обновлённый продукт: \(product.name), Цена: \(product.price) \(product.currency.rawValue), Сокет: \(product.motherboard.socet), Процессор: \(product.motherboard.processor.rawValue)")
