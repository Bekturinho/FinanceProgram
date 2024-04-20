//
//  IncomeInfoView.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/15/24.
//
//
//  BalanceView.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/15/24.
//

import UIKit

class ExpensesInfoView: UIView{
    
    var delegate: DelegateForAny?
    
    private lazy var editExpButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "square.and.pencil.circle.fill"), for: .normal)
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        
        
        return button
        
        
    }()
    
    private lazy var expInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Expence"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    private lazy var expLabel: UILabel = {
        let label = UILabel()
        label.text = "$1,800"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
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
    
    func updateData(data: String){
        expLabel.text = data
        print(expLabel.text ?? "ewe")
    }
    
    private func addAllSubs(){
        addSubview(expLabel)
        addSubview(expInfoLabel)
        addSubview(editExpButton)

     
        expLabel.translatesAutoresizingMaskIntoConstraints = false
        expInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        editExpButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func putContraints(){
        NSLayoutConstraint.activate([
            editExpButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            editExpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            editExpButton.heightAnchor.constraint(equalToConstant: 40),
            editExpButton.widthAnchor.constraint(equalToConstant: 100),
            
         
            expInfoLabel.topAnchor.constraint(equalTo: editExpButton.bottomAnchor, constant: 20),
            expInfoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            expInfoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            
            expLabel.topAnchor.constraint(equalTo: expInfoLabel.bottomAnchor, constant: 10),
            expLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            expLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
    
        ])
    }
    
    @objc func showAlert(){
        delegate?.showAlertForExpView()
    }
}
