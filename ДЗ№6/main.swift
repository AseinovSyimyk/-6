//
//  main.swift
//  ДЗ№6
//
//  Created by User on 2/9/23.
//

import Foundation
//1) Реализовать авторизацию пользователя. Пользователь должен указывать "м" или "ж" в объект должен записаться как .male или .female. Юзеров хранить в массиве и отобразить их в принте.
var users: [(name: String, gender: String)] = []

func authenticateUser() {
    print("Добро пожаловать! Введите ваше имя:")
    if let name = readLine() {
        print("Введите ваш пол (м/ж):")
        if let gender = readLine() {
            if gender == "м" || gender == "ж" {
                users.append((name: name, gender: gender))
                print("Вы успешно авторизовались!")
            } else {
                print("Некорректный ввод пола. Используйте 'м' или 'ж'.")
            }
        } else {
            print("Ошибка ввода пола.")
        }
    } else {
        print("Ошибка ввода имени.")
    }
}
authenticateUser()
print("Список зарегистрированных пользователей:")
for user in users {
    let genderText = user.gender == "м" ? "Мужской" : "Женский"
    print("Имя: \(user.name), Пол: \(genderText)")
}







//2) Придумать пример со структурой, с 3 параметрами, где 2 параметра являются перечислением.



enum CarType {
    case sedan, suv, sportsCar
}


enum EngineStatus {
    case running, stopped
}


struct Car {
    var make: String          // Производитель автомобиля
    var model: String         // Модель автомобиля
    var type: CarType         // Тип автомобиля
    var status: EngineStatus  // Состояние двигателя
}


var myCar = Car(make: "Toyota", model: "Camry", type: .sedan, status: .stopped)

// Выводим информацию о машине
print("Моя машина: \(myCar.make) \(myCar.model)")
print("Тип: \(myCar.type)")
print("Состояние двигателя: \(myCar.status)")

//3) Создать структуру техника. Добавить параметры. Создать перечисление Состояние с кейсами Б/У, Новый. Создать класс Склад с массивом техники. Добавить функции фильтрации товара по состоянию, выводить список товаров.
// Определяем перечисление для состояния товара
enum Состояние {
    case бу
    case новый
}

// Структура для представления информации о технике
struct Техника {
    var название: String
    var состояние: Состояние
    var цена: Double
}
let товар1 = Техника(название: "Ноутбук MackBook", состояние: .новый, цена: 100000.0)
let товар2 = Техника(название: "Смартфон Iphone", состояние: .бу, цена: 50000.0)
let товар3 = Техника(название: "Планшет Ipad", состояние: .новый, цена: 80000.0)

let склад = Склад(товары: [товар1, товар2, товар3])


склад.вывестиСписокТоваров()

