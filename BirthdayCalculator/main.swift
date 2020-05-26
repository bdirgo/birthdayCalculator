//
//  main.swift
//  BirthdayCalculator - Finding days left (on average) on Earth
//  Motivational tool to focus on what matters.
//
//  Created by Benjamin Dirgo on 5/25/20.
//  Copyright © 2020 Benjamin Dirgo. All rights reserved.
//

import Foundation

// Totally copied from SO: https://stackoverflow.com/questions/50950092/calculating-the-difference-between-two-dates-in-swift
// Probably don't need this, and only needed to type cast to a double
extension Date {
    static func - (lhs: Date, rhs: Date) -> TimeInterval {
        return lhs.timeIntervalSinceReferenceDate - rhs.timeIntervalSinceReferenceDate
    }
}
// TODO: Ask for birthday?
var components = DateComponents()
let birthYear = 1990
components.year = birthYear
let date = Calendar.current.date(from: components) ?? Date()

// Calculate date from then
// https://media.nmfn.com/tnetwork/lifespan
let actualYears = 87 // A new highscore!
var actualComponent = DateComponents()
actualComponent.year = birthYear + actualYears
let lastDate = Calendar.current.date(from: actualComponent) ?? Date()

// Output the days left
let today = Date()
// TODO: terrible names, and this function is probably not necessary
func secondsToDays(_ time: TimeInterval) -> String {
    let secondsPerDay = 60 * 60 * 24
    let days = Double(time) / Double(secondsPerDay)
    return "\(days)"
}
print(secondsToDays(lastDate - today))
