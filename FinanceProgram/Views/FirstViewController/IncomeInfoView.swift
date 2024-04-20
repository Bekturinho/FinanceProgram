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


class IncomeInfoView: UIView{

 
     var delegate: DelegateForAny?

    
    private lazy var editIncomeButton: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(systemName: "dollarsign.circle.fill"), for: .normal)
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
   
        
        return button
        
        
    }()
    
    private lazy var incomeInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Income"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    private lazy var incomeLabel: UILabel = {
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
    
    func updateData(data: String){
        incomeLabel.text = data
        print(incomeLabel.text ?? "ewe")
    }
    
    private func setUpSubViews(){
        addAllSubs()
        putContraints()
        
    }
    
    private func addAllSubs(){
        addSubview(incomeLabel)
        addSubview(incomeInfoLabel)
        addSubview(editIncomeButton)

     
        incomeLabel.translatesAutoresizingMaskIntoConstraints = false
        incomeInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        editIncomeButton.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    private func putContraints(){
        NSLayoutConstraint.activate([
            editIncomeButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            editIncomeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            editIncomeButton.heightAnchor.constraint(equalToConstant: 40),
            editIncomeButton.widthAnchor.constraint(equalToConstant: 100),
            
         
            incomeInfoLabel.topAnchor.constraint(equalTo: editIncomeButton.bottomAnchor, constant: 20),
            incomeInfoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            incomeInfoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            
            incomeLabel.topAnchor.constraint(equalTo: incomeInfoLabel.bottomAnchor, constant: 10),
            incomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            incomeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
    
        ])
    }
    @objc func showAlert(){
        delegate?.showAlertForIncomeView()
    }
    
   
   

}
    

    
    


