//
//  ViewController.swift
//  FishControl
//
//  Created by Douglas castilho on 20/06/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import UIKit
import Cartography

class ViewController: UIViewController {
    
    let imageView = UIImageView(image: UIImage(named: "fishControl.png"))
    
    let labelTotalAmount: UILabel = {
        let labelTotalAmount = UILabel()
        labelTotalAmount.text = "Total Amount"
        labelTotalAmount.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelTotalAmount.translatesAutoresizingMaskIntoConstraints = false
        return labelTotalAmount
    }()
    
    let totalAmount: UILabel = {
        let totalAmount = UILabel()
        totalAmount.text = "300 fishes"
        totalAmount.translatesAutoresizingMaskIntoConstraints = false
        return totalAmount
    }()
    

    let labelExpectedProfit: UILabel = {
        let labelExpectedProfit = UILabel()
        labelExpectedProfit.text = "Expected Profit"
        labelExpectedProfit.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelExpectedProfit.translatesAutoresizingMaskIntoConstraints = false
        return labelExpectedProfit
    }()
    
    let expectedProfit: UILabel = {
        let expectedProfit = UILabel()
        expectedProfit.text = "R$800,00"
        expectedProfit.translatesAutoresizingMaskIntoConstraints = false
        return expectedProfit
    }()
    
    let backgroundImage = UIImageView(image: UIImage(named: "lakeOne.jpg"))
    
    let labelLake: UILabel = {
        let labelLake = UILabel()
        labelLake.text = "Lake"
        labelLake.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelLake.translatesAutoresizingMaskIntoConstraints = false
        return labelLake
    }()
    
    let lake: UILabel = {
        let lake = UILabel()
        lake.text = "Lake 01"
        lake.translatesAutoresizingMaskIntoConstraints = false
        return lake
    }()
    
    let labelAmount: UILabel = {
        let labelAmount = UILabel()
        labelAmount.text = "Amount"
        labelAmount.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelAmount.translatesAutoresizingMaskIntoConstraints = false
        return labelAmount
    }()
    
    let amount: UILabel = {
        let amount = UILabel()
        amount.text = "Lake 01"
        amount.translatesAutoresizingMaskIntoConstraints = false
        return amount
    }()
    
    let labelAverage: UILabel = {
        let labelAverage = UILabel()
        labelAverage.text = "Average"
        labelAverage.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelAverage.translatesAutoresizingMaskIntoConstraints = false
        return labelAverage
    }()
    
    let average: UILabel = {
        let average = UILabel()
        average.text = "100 kgs"
        average.translatesAutoresizingMaskIntoConstraints = false
        return average
    }()
    
    let labelEntryDate: UILabel = {
        let labelEntryDate = UILabel()
        labelEntryDate.text = "Entry Date"
        labelEntryDate.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelEntryDate.translatesAutoresizingMaskIntoConstraints = false
        return labelEntryDate
    }()
    
    let entryDate: UILabel = {
        let entryDate = UILabel()
        entryDate.text = "02/02/2020"
        entryDate.translatesAutoresizingMaskIntoConstraints = false
        return entryDate
    }()
    
    let labelDepartureDate: UILabel = {
        let labelDepartureDate = UILabel()
        labelDepartureDate.text = "Departure Date"
        labelDepartureDate.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelDepartureDate.translatesAutoresizingMaskIntoConstraints = false
        return labelDepartureDate
    }()
    
    let departureDate: UILabel = {
        let departureDate = UILabel()
        departureDate.text = "20/06/2020"
        departureDate.translatesAutoresizingMaskIntoConstraints = false
        return departureDate
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigate))
        backgroundImage.isUserInteractionEnabled = true
        backgroundImage.addGestureRecognizer(tapGestureRecognizer)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        view.addSubview(labelTotalAmount)
        view.addSubview(labelExpectedProfit)
        view.addSubview(totalAmount)
        view.addSubview(expectedProfit)
        
        imageView.frame = CGRect(x: 13, y: 22, width: 119, height: 58)
        view.addSubview(imageView)
        
        backgroundImage.isOpaque = false
        backgroundImage.alpha = 0.30
        backgroundImage.layer.cornerRadius = 10
        backgroundImage.clipsToBounds = true
        view.addSubview(backgroundImage)
        
        view.addSubview(labelLake)
        view.addSubview(lake)
        view.addSubview(labelAmount)
        view.addSubview(amount)
        view.addSubview(labelAverage)
        view.addSubview(average)
        view.addSubview(labelEntryDate)
        view.addSubview(entryDate)
        view.addSubview(labelDepartureDate)
        view.addSubview(departureDate)
        
        
        constrain(labelTotalAmount, labelExpectedProfit, totalAmount, expectedProfit) { labelTotalAmount, labelExpectedProfit, totalAmount, expectedProfit in
            
            labelTotalAmount.top == labelTotalAmount.superview!.safeAreaLayoutGuide.top + 101
            labelTotalAmount.leading == labelTotalAmount.superview!.leading + 22
            labelExpectedProfit.top == labelTotalAmount.top
            labelExpectedProfit.leading == labelExpectedProfit.superview!.leading + 228
            
            
            totalAmount.top == labelTotalAmount.top + 23
            totalAmount.leading == labelTotalAmount.leading
            
            expectedProfit.top == labelExpectedProfit.top + 23
            expectedProfit.leading == labelExpectedProfit.leading
            
            
        }
        
        constrain(totalAmount, backgroundImage, labelLake, lake, labelAmount, amount, labelAverage, average){ totalAmount, backgroundImage, labelLake, lake, labelAmount, amount, labelAverage, average in
            
            backgroundImage.width == backgroundImage.superview!.width - 44
            backgroundImage.height == 190
            backgroundImage.top == totalAmount.top + 60
            backgroundImage.centerX == backgroundImage.superview!.centerX
            
            labelLake.top == backgroundImage.top + 13
            labelLake.leading == backgroundImage.leading + 17
            
            align(leading: labelLake, lake, labelAmount, amount, labelAverage, average)
            
            lake.top == labelLake.top + 27
            labelAmount.top == lake.top + 27
            amount.top == labelAmount.top + 27
            labelAverage.top == amount.top + 27
            average.top == labelAverage.top + 27
        }
        
        constrain(labelAmount, labelEntryDate, entryDate, labelDepartureDate, departureDate){ labelAmount, labelEntryDate, entryDate, labelDepartureDate, departureDate in
            
            labelEntryDate.top == labelAmount.top
            labelEntryDate.leading == labelAmount.leading + 170
            
            align(leading: labelEntryDate, entryDate, labelDepartureDate, departureDate)
            
            entryDate.top == labelEntryDate.top + 27
            labelDepartureDate.top == entryDate.top + 27
            departureDate.top == labelDepartureDate.top + 27
            
        }

    }
    
    @objc func navigate(){
        print("Clicked. Now it has to navigate to details")
    }

    

}

