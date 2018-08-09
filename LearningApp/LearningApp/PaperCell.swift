//
//  PaperCell.swift
//  LearningApp
//
//  Created by Manish Giri on 6/11/18.
//  Copyright © 2018 Manish Giri. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "full"))
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let viewContainer: UIView = {
        
        let vc = UIView()
        vc.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        vc.backgroundColor = .blue
        vc.translatesAutoresizingMaskIntoConstraints = false
        return vc
    }()
    
    let descriptionTextView: UITextView = {
        
        let attributedText = NSMutableAttributedString(string: "Join As today for our fun game!", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
        let textView = UITextView()
        //textView.text = "Join As today for our fun game!"
        
        attributedText.append(NSMutableAttributedString(string: "\n\n\nA text game or text-based game is a video game that uses text characters instead of bitmap or vector graphics. Text-based games were a popular form of interactive fiction in the 1980s", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 14),NSAttributedStringKey.foregroundColor: UIColor.cyan]))
        // textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.textColor = UIColor.blue
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    private func setUpUI(){
        
         addSubview(viewContainer)
        viewContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        viewContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        viewContainer.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        viewContainer.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        viewContainer.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        
        addSubview(bearImageView)
        bearImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        bearImageView.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        // imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: topAnchor, constant: 300).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 100).isActive = true
        // descriptionTextView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        // descriptionTextView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
       
      
    
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        backgroundColor = .purple
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) is not been implement")
    }
}
