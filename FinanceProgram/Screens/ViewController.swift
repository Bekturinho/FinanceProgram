//
//  ViewController.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/15/24.
//

import UIKit


class ViewController: UIViewController {
    
    private var total = 0
    private var availableBalance = 0
    
    var delegateResult: ConfigureResultViewController?
 
    var splitedInvestArray: [String] = []
    var arrayloh = ["323","322323","454334","2323"]
    
    private lazy var balanceView: BalanceView = {
        BalanceView()
    }()
    
    private lazy var expencesView: ExpencesView = {
        ExpencesView()
    }()
    
    private lazy var incomeInfoView: IncomeInfoView = {
        IncomeInfoView()
       
    }()
    
    private lazy var expInfoView: ExpensesInfoView = {
        ExpensesInfoView()
    }()
    
   
    
 
    
    
    private lazy var planFinanceButton: UIButton = {
        let button = UIButton()
        button.setTitle("Calculate", for: .normal)
        button.backgroundColor = .systemYellow
        button.addTarget(self, action: #selector(calculate), for: .touchUpInside)
       
        return button
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubViews()
        view.backgroundColor = .white
        incomeInfoView.delegate = self
        expInfoView.delegate = self
        balanceView.delegate = self
        expencesView.delegate = self
        
        title = "Welcome To True Finance Planner!"
    }
    
    
    
    private func setUpSubViews(){
        addAllSubs()
        putContraints()
    }
    
    private func addAllSubs(){
        view.addSubview(balanceView)
        view.addSubview(expencesView)
        view.addSubview(incomeInfoView)
        view.addSubview(expInfoView)
        view.addSubview(planFinanceButton)
      
        
        balanceView.translatesAutoresizingMaskIntoConstraints = false
        expencesView.translatesAutoresizingMaskIntoConstraints = false
        incomeInfoView.translatesAutoresizingMaskIntoConstraints = false
        expInfoView.translatesAutoresizingMaskIntoConstraints = false
        planFinanceButton.translatesAutoresizingMaskIntoConstraints = false

    }
    
    private func putContraints(){
        NSLayoutConstraint.activate([
            balanceView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            balanceView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            balanceView.widthAnchor.constraint(equalToConstant: 350),
            balanceView.heightAnchor.constraint(equalToConstant: 150),
            
            
        ])
        balanceView.layer.cornerRadius = 12
        
        
        
        NSLayoutConstraint.activate([
            expencesView.topAnchor.constraint(equalTo: balanceView.bottomAnchor, constant: 60),
            expencesView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            expencesView.widthAnchor.constraint(equalToConstant: 350),
            expencesView.heightAnchor.constraint(equalToConstant: 100),
            
            
        ])
        expencesView.layer.cornerRadius = 12
        
    
        
        NSLayoutConstraint.activate([
            incomeInfoView.topAnchor.constraint(equalTo: expencesView.bottomAnchor, constant: 70),
            incomeInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            incomeInfoView.widthAnchor.constraint(equalToConstant: 150),
            incomeInfoView.heightAnchor.constraint(equalToConstant: 170),
            
            
        ])
        incomeInfoView.layer.cornerRadius = 12
        
        NSLayoutConstraint.activate([
            expInfoView.topAnchor.constraint(equalTo: expencesView.bottomAnchor, constant: 70),
            expInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            expInfoView.widthAnchor.constraint(equalToConstant: 150),
            expInfoView.heightAnchor.constraint(equalToConstant: 170),
            
            
        ])
        expInfoView.layer.cornerRadius = 12
        
        NSLayoutConstraint.activate([
            planFinanceButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            planFinanceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            planFinanceButton.widthAnchor.constraint(equalToConstant: 350),
            planFinanceButton.heightAnchor.constraint(equalToConstant: 60),
            
            
        ])
        planFinanceButton.layer.cornerRadius = 12
        
    }
    func splitInvest(){
        let allValues = [40,40,10,10]
        var array: [Int] = []
  
        for num in allValues{
            array.append(availableBalance * num / 100)
            
        }
        splitedInvestArray = array.map({String($0)})
       
      
        
       
    
      
        
        
       
    }
    
    @objc func calculate(){
        let controller = ResultViewController()
        navigationController?.pushViewController(controller, animated: true)
        balanceView.delegate?.changeData()
        expencesView.delegate?.getBalance()
        splitInvest()
        print(splitedInvestArray)
        controller.getValuefromView(with: splitedInvestArray)
        delegateResult?.calculateValue()
        
        
    }

       
        
    }
    
extension ViewController: DelegateForAny{
  
    

    

    
    func getBalance() {
        expencesView.getData(data: String(availableBalance))
    }
    
    func changeData() {
        balanceView.getData(income: String(total))
    }
    
   
    
   
    
    func showAlertForIncomeView() {
        
        let alert = UIAlertController(title: "Hello Beka", message: nil, preferredStyle: .alert)
        alert.addTextField(){text in
            text.placeholder = "put Yur New Income"
            
            let saveAction = UIAlertAction(title: "Save", style: .default){ [self]_ in
            if let textField = alert.textFields?.first{
              
                let enteredText = textField.text ?? "nil"
                    self.incomeInfoView.updateData(data: enteredText)
                
                self.total += Int(enteredText) ?? 0
                self.availableBalance = (Int(enteredText) ?? 0)
                
            }
        }

        alert.addAction(saveAction)
        self.present(alert, animated: true)
    }
    }
    
    func showAlertForExpView() {
        
        let alert = UIAlertController(title: "Hello Beka", message: nil, preferredStyle: .alert)
        alert.addTextField(){text in
            text.placeholder = "put Yur New Income"
            
        let saveAction = UIAlertAction(title: "Save", style: .default){_ in
            if let textField = alert.textFields?.first{
              
                let enteredText = textField.text ?? "nil"
                    self.expInfoView.updateData(data: enteredText)
                self.total += Int(enteredText) ?? 0
               
                

                
            }
        }

        alert.addAction(saveAction)
        self.present(alert, animated: true)
    }
    }
    
    
    
    
}


    

