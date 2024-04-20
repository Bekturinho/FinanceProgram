//
//  BalanceView.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/15/24.
//

import UIKit

class BalanceView: UIView{
    private lazy var availableBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "Avalaible balance"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    private lazy var mainBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "$3500"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var detailsBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "See Details"
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
    
    private func addAllSubs(){
        addSubview(availableBalanceLabel)
        addSubview(mainBalanceLabel)
        addSubview(detailsBalanceLabel)
     
        availableBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        mainBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        detailsBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func putContraints(){
        NSLayoutConstraint.activate([
            availableBalanceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            availableBalanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20 ),
            availableBalanceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            
            mainBalanceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            mainBalanceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainBalanceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            mainBalanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: 20),
            
            detailsBalanceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            detailsBalanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: 20),
            detailsBalanceLabel.topAnchor.constraint(equalTo: mainBalanceLabel.bottomAnchor, constant: 20),
            
         
            
        ])
    }
}
