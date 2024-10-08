//
//  DateExtensions.swift
//  ScanPaymentCard
//
//  Created by Yuth Fight on 29/8/24.
//

import Foundation


extension Date {
    var monthsSince2000: Int {
        let dateComponent = Calendar(identifier: .gregorian).dateComponents(in: .current, from: self)
        let year = (dateComponent.year ?? 0) % 100
        let month = (dateComponent.month ?? 1) - 1 // DateComponent.month is 1 to 12
        return 12 * year + month
    }
}
