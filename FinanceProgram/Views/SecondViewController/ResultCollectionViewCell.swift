//
//  ResultCollectionView.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/19/24.
//

import UIKit

class ResultCollectionViewCell: UICollectionViewCell{
    
    
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.arrow.up.circle.fill")
        image.tintColor = .white
        return image
    }()
    
    private lazy var nameLAbel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private lazy var numberLAbel: UILabel = {
        let label = UILabel()
        label.text = "$2,000"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private lazy var dateLAbel: UILabel = {
        let label = UILabel()
        label.text = "27 of October"
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    private lazy var cashLAbel: UILabel = {
        let label = UILabel()
        label.text = "In Cash"
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(imageView)
        addSubview(nameLAbel)
        addSubview(numberLAbel)
        addSubview(dateLAbel)
        addSubview(cashLAbel)
        
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLAbel.translatesAutoresizingMaskIntoConstraints = false
        numberLAbel.translatesAutoresizingMaskIntoConstraints = false
        dateLAbel.translatesAutoresizingMaskIntoConstraints = false
        cashLAbel.translatesAutoresizingMaskIntoConstraints = false
//        
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 3),
            imageView.heightAnchor.constraint(equalToConstant: 75),
            imageView.widthAnchor.constraint(equalToConstant: 75),
            
            nameLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLAbel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),

            numberLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            numberLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            dateLAbel.topAnchor.constraint(equalTo: nameLAbel.bottomAnchor, constant: 10),
            dateLAbel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),

            cashLAbel.topAnchor.constraint(equalTo: numberLAbel.bottomAnchor, constant: 10),
            cashLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
        
        ])
    }
    
    func configureInvestInfo(image: String, type: String, num: String){
        imageView.image = UIImage(systemName: image)
        nameLAbel.text = type
        numberLAbel.text = num
    }
   
    
  
    
    
}

