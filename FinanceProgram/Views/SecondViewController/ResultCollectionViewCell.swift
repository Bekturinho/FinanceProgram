//
//  ResultCollectionView.swift
//  FinanceProgram
//
//  Created by fortune cookie on 4/19/24.
//

import UIKit

class ResultCollectionView: UIView{
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.arrow.up.circle.fill")
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    private lazy var nameLAbel: UILabel = {
        let label = UILabel()
        label.text = "Zakyat"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    private lazy var numberLAbel: UILabel = {
        let label = UILabel()
        label.text = "$2,000"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    private lazy var dateLAbel: UILabel = {
        let label = UILabel()
        label.text = "27 of October"
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
        return label
    }()
    
    private lazy var cashLAbel: UILabel = {
        let label = UILabel()
        label.text = "In Cash"
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin)
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
        
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            nameLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            nameLAbel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -20),
            
            numberLAbel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            numberLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            dateLAbel.topAnchor.constraint(equalTo: nameLAbel.bottomAnchor, constant: 20),
            dateLAbel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -20),
            
            cashLAbel.topAnchor.constraint(equalTo: numberLAbel.bottomAnchor, constant: 20),
            cashLAbel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
        
        ])
    }
    
    
}

