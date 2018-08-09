//
//  ViewController.swift
//  LearningApp
//
//  Created by Manish Giri on 6/7/18.
//  Copyright © 2018 Manish Giri. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var mainPink = UIColor(red: 232/255, green: 64/255, blue: 68/235, alpha: 1)
    
}

class ViewController: UIViewController {

    
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "full"))
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
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
    
    
    let viewContainer: UIView = {
       
        let vc = UIView()
        vc.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        vc.backgroundColor = .blue
        vc.translatesAutoresizingMaskIntoConstraints = false
        return vc
    }()
    
    private let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Prev", for: .normal)
        button.tintColor = .mainPink
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
           button.tintColor = .mainPink
         button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let pageControl : UIPageControl = {
        let page = UIPageControl()
        page.currentPage = 0
        page.numberOfPages = 4
        page.currentPageIndicatorTintColor = .mainPink
        page.pageIndicatorTintColor = .gray
        return page
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        view.backgroundColor = UIColor.yellow
        
      //  let imageView = UIImageView(image: #imageLiteral(resourceName: "full"))
        
      
       view.addSubview(viewContainer)
        viewContainer.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        view.addSubview(previousButton)
        view.addSubview(nextButton)
        
        setupBottomControl()
        setUpUI()
      
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    fileprivate func setupBottomControl() {
    
      //  previousButton.backgroundColor = UIColor.yellow
        // nextButton.backgroundColor = UIColor.blue
    //    previousButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        
       // let blueView = UIView()
        //blueView.backgroundColor = .blue
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
       // let yellowView = UIView()
       // yellowView.backgroundColor = .yellow
        
        
        let bottomStackControllerView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        bottomStackControllerView.distribution = .fillEqually
        //bottomStackControllerView.axis = .vertical
        bottomStackControllerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomStackControllerView)
        
        NSLayoutConstraint.activate([
            //bottomStackControllerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bottomStackControllerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomStackControllerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomStackControllerView.heightAnchor.constraint(equalToConstant: 50),
            bottomStackControllerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
            ])
        
          bottomStackControllerView.addSubview(previousButton)
    }

    private func setUpUI(){
        
        
        viewContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        viewContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        viewContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        viewContainer.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        viewContainer.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        
        
       bearImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
       bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        // imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
       bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
       bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 100).isActive = true
       // descriptionTextView.widthAnchor.constraint(equalToConstant: 200).isActive = true
       // descriptionTextView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
       
    }
}

