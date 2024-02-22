//
//  Double+Extension.swift
//  tip-calculator
//
//  Created by Hyunwoo Jeon on 2/22/24.
//

import Foundation

extension Double {
    var currencyFormatted: String {
        var isWholeNumber: Bool {
            isZero ? true: !isNormal ? false: self == rounded()
            //A normal value is a finite number that uses the full precision available to values of a type.
            //Zero is neither a normal nor a subnormal number.
        }
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = isWholeNumber ? 0 : 2
        formatter.locale = NSLocale(localeIdentifier: "en_US") as Locale
        return formatter.string(for: self) ?? ""
    }
}
