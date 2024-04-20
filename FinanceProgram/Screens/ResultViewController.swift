//
//  ResultViewController.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/15/24.
//

import UIKit



class ResultViewController: UIViewController{
    
    
    
    
    private lazy var customCollectionViewCell: UIView = {
        ResultCollectionViewCell()
    }()
    
    private var imageArray: [String] = [
        "dollarsign.arrow.circlepath",
        "exclamationmark.triangle",
        "hand.thumbsup.fill",
        "airplane"
    ]
    
    private var typeArray: [String] = [ "Investments", "Force Major", "Fun","Travel"]
    private var investArray: [String] = []
  var loh = ["2323","32232","2323","00000"]
    
    private lazy var resultCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.itemSize = (CGSize(width: 365, height: 80))
        layout.minimumLineSpacing = 30
        view.register(ResultCollectionViewCell.self, forCellWithReuseIdentifier: ResultViewController.id)
 
        view.dataSource = self

        return view
    }()
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSubViews()
        resultCollectionView.reloadData()
        
    }
    

    private func setUpSubViews(){
     addAllSubs()
        putContraints()
    }

 
    private func addAllSubs(){
        view.addSubview(resultCollectionView)
        
        resultCollectionView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private func putContraints(){

        NSLayoutConstraint.activate([
                 resultCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
                 resultCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                 resultCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                 resultCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
             ])
       
    }
    

    func getValuefromView(with: [String]) {
       
        for num in with{
            investArray.append(num)
        }
        print(investArray)
        
    }
    
}



extension ResultViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = resultCollectionView.dequeueReusableCell(withReuseIdentifier: ResultViewController.id, for: indexPath) as? ResultCollectionViewCell else{
            return UICollectionViewCell()
        }
        
    
        cell.configureInvestInfo(image: imageArray[indexPath.item], type: typeArray[indexPath.item], num: investArray[indexPath.item])
        cell.backgroundColor = .systemBlue
        cell.layer.cornerRadius = 20
    
        return cell
    }
    

}


extension ResultViewController: ConfigureResultViewController{
  
    
    func calculateValue() {
      
        resultCollectionView.reloadData()
        print(investArray)
    }
    
    
}

//extension ResultViewController: ConfigureResultViewController{
//    func calculateValue(with: [String]) {
//       
//        for num in with{
//            investArray.append(InvestModel(value: num))
//        }
//        print(investArray)
//        
//    }
//    
// 
//    
//    
//}
//
//import UIKit
//
//class ResultViewController: UIViewController, UICollectionViewDataSource{
//
//    private let cellReuseIdentifier = "cell"
//    private let numberOfItems = 5
//
//    private lazy var resultCollectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.minimumLineSpacing = 30
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.backgroundColor = .white
//        collectionView.dataSource = self
//
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
//        return collectionView
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        setUpSubviews()
//    }
//
//    private func setUpSubviews() {
//        view.addSubview(resultCollectionView)
//        resultCollectionView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            resultCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
//            resultCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            resultCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            resultCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return numberOfItems
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath)
//        cell.backgroundColor = .red
//        return cell
//    }
//
////    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
////        let collectionViewWidth = collectionView.bounds.width
////        let cellWidth = (collectionViewWidth - CGFloat(numberOfItems - 1) * 30) / CGFloat(numberOfItems)
////        return CGSize(width: cellWidth, height: cellWidth) // Размеры ячейки
////    }
//}
