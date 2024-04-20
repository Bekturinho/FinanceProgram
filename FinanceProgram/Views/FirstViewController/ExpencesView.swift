//
//  BalanceView.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/15/24.
//

import UIKit

class ExpencesView: UIView{
    
    var delegate: DelegateForAny?
    
    
    private lazy var budgetLabel: UILabel = {
        let label = UILabel()
        label.text = "Avalaible balance for this month"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    private lazy var mainBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "$1500"
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var availableBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "Cash Avalaible"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpSubViews()
     backgroundColor = .systemBlue
    }
    
    private func setUpSubViews(){
        addAllSubs()
        putContraints()
    }
    func getData(data: String){
        mainBalanceLabel.text = data
        print(mainBalanceLabel.text)
    }
    
    private func addAllSubs(){
        addSubview(budgetLabel)
        addSubview(mainBalanceLabel)
        addSubview(availableBalanceLabel)
     
        availableBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        mainBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        budgetLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func putContraints(){
        NSLayoutConstraint.activate([
            budgetLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            budgetLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            
            mainBalanceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            mainBalanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
        
            
            availableBalanceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            availableBalanceLabel.topAnchor.constraint(equalTo: budgetLabel.bottomAnchor, constant: 20),
            
         
            
        ])
    }
}
