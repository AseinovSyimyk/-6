//
//  Склад.swift
//  ДЗ№6
//
//  Created by User on 7/9/23.
//

import Foundation
class Склад {
    var товары: [Техника]

    init(товары: [Техника]) {
        self.товары = товары
    }

    // Функция для фильтрации товаров по состоянию
    func фильтроватьПоСостоянию(состояние: Состояние) -> [Техника] {
        let отфильтрованныеТовары = товары.filter { $0.состояние == состояние }
        return отфильтрованныеТовары
    }

    // Функция для вывода списка товаров
    func вывестиСписокТоваров() {
        print("Список товаров на складе:")
        for товар in товары {
            var состояниеText = ""
            switch товар.состояние {
            case .бу:
                состояниеText = "Б/У"
            case .новый:
                состояниеText = "Новый"
            }
            print("Название: \(товар.название), Состояние: \(состояниеText), Цена: \(товар.цена)")
        }
    }
}
