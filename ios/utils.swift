//
//  utils.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 11.12.2023.
//

import Foundation

func printRandomGermanHoliday2022() -> String {
    let holidays = [
        ("Neujahrstag", "01-01"),
        ("Karfreitag", "04-15"),
        ("Ostermontag", "04-18"),
        ("Tag der Arbeit", "05-01"),
        ("Christi Himmelfahrt", "05-26"),
        ("Pfingstmontag", "06-06"),
        ("Tag der Deutschen Einheit", "10-03"),
        ("Erster Weihnachtstag", "12-25"),
        ("Zweiter Weihnachtstag", "12-26")
    ]

    let randomIndex = Int.random(in: 0..<holidays.count)
    let (name, date) = holidays[randomIndex]
    return "\(name): \(date)"
}
