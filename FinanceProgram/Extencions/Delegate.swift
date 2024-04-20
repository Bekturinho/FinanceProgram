//
//  Delegate.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/15/24.
//

import Foundation

protocol DelegateForAny{
    func showAlertForIncomeView()
    func showAlertForExpView()
    func changeData()
    func getBalance()
   
}

protocol ConfigureResultViewController{
    func calculateValue()
}
