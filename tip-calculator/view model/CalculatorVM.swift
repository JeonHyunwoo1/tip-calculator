//
//  CalculatorVM.swift
//  tip-calculator
//
//  Created by Hyunwoo Jeon on 2/14/24.
//

import Foundation
import Combine

class CalculatorVM {
    
    struct Input {
        let billPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
    }
    
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    var cancellables = Set<AnyCancellable>()
    
    func transform(input: Input) -> Output {

        
        let result = Result(
            amountPerPerson: 500,
            totalBill: 1000,
            totalTip: 50.0
        )
        
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
    
}
