//
//  saleTosViewController.swift
//  FishControl
//
//  Created by Douglas castilho on 22/06/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import UIKit
import Cartography

class ExpensesViewController: UIViewController {
    
    let imageView = UIImageView(image: UIImage(named: "fishControl.png"))
    
    let labelTotalExpenses: UILabel = {
        let labelTotalExpenses = UILabel()
        labelTotalExpenses.text = "Total Expenses"
        labelTotalExpenses.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelTotalExpenses.translatesAutoresizingMaskIntoConstraints = false
        return labelTotalExpenses
    }()
    
    let totalExpenses: UILabel = {
        let totalExpenses = UILabel()
        totalExpenses.text = "R$1.500.00"
        totalExpenses.translatesAutoresizingMaskIntoConstraints = false
        return totalExpenses
    }()
    

    let labelTotalProfit: UILabel = {
        let labelTotalProfit = UILabel()
        labelTotalProfit.text = "Total Profit"
        labelTotalProfit.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelTotalProfit.translatesAutoresizingMaskIntoConstraints = false
        return labelTotalProfit
    }()
    
    let totalProfit: UILabel = {
        let totalProfit = UILabel()
        totalProfit.text = "R$4.500.00"
        totalProfit.translatesAutoresizingMaskIntoConstraints = false
        return totalProfit
    }()
    
    let backgroundImage = UIImageView(image: UIImage(named: "yellowHouse.jpg"))
    
    let labelSaleTo: UILabel = {
        let labelSaleTo = UILabel()
        labelSaleTo.text = "Sale To"
        labelSaleTo.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelSaleTo.translatesAutoresizingMaskIntoConstraints = false
        return labelSaleTo
    }()
    
    let saleTo: UILabel = {
        let saleTo = UILabel()
        saleTo.text = "John Johnes"
        saleTo.translatesAutoresizingMaskIntoConstraints = false
        return saleTo
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
        amount.text = "2 kgs"
        amount.translatesAutoresizingMaskIntoConstraints = false
        return amount
    }()
    
    let labelTotal: UILabel = {
        let labelTotal = UILabel()
        labelTotal.text = "Total"
        labelTotal.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelTotal.translatesAutoresizingMaskIntoConstraints = false
        return labelTotal
    }()
    
    let total: UILabel = {
        let total = UILabel()
        total.text = "R$40.00"
        total.translatesAutoresizingMaskIntoConstraints = false
        return total
    }()
    
    let labelDate: UILabel = {
        let labelDate = UILabel()
        labelDate.text = "Date"
        labelDate.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelDate.translatesAutoresizingMaskIntoConstraints = false
        return labelDate
    }()
    
    let date: UILabel = {
        let date = UILabel()
        date.text = "02/02/2020"
        date.translatesAutoresizingMaskIntoConstraints = false
        return date
    }()
    
    let labelPayment: UILabel = {
        let labelPayment = UILabel()
        labelPayment.text = "Payment"
        labelPayment.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelPayment.translatesAutoresizingMaskIntoConstraints = false
        return labelPayment
    }()
    
    let payment: UILabel = {
        let payment = UILabel()
        payment.text = "OK"
        payment.translatesAutoresizingMaskIntoConstraints = false
        return payment
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        setupConstraints()
    }
    
    private func setupConstraints(){
        view.addSubview(labelTotalExpenses)
        view.addSubview(labelTotalProfit)
        view.addSubview(totalExpenses)
        view.addSubview(totalProfit)
        
        imageView.frame = CGRect(x: 13, y: 22, width: 119, height: 58)
        view.addSubview(imageView)
        
        backgroundImage.isOpaque = false
        backgroundImage.alpha = 0.30
        backgroundImage.layer.cornerRadius = 10
        backgroundImage.clipsToBounds = true
        view.addSubview(backgroundImage)
        
        view.addSubview(labelSaleTo)
        view.addSubview(saleTo)
        view.addSubview(labelAmount)
        view.addSubview(amount)
        view.addSubview(labelTotal)
        view.addSubview(total)
        view.addSubview(labelDate)
        view.addSubview(date)
        view.addSubview(labelPayment)
        view.addSubview(payment)
        
        
        constrain(labelTotalExpenses, labelTotalProfit, totalExpenses, totalProfit) { labelTotalExpenses, labelTotalProfit, totalExpenses, totalProfit in
            
            labelTotalExpenses.top == labelTotalExpenses.superview!.safeAreaLayoutGuide.top + 101
            labelTotalExpenses.leading == labelTotalExpenses.superview!.leading + 22
            
            
            labelTotalProfit.top == labelTotalExpenses.top
            labelTotalProfit.leading == labelTotalProfit.superview!.leading + 228
            
            
            totalExpenses.top == labelTotalExpenses.top + 23
            totalExpenses.leading == labelTotalExpenses.leading
            
            totalProfit.top == labelTotalProfit.top + 23
            totalProfit.leading == labelTotalProfit.leading
            
            
        }
        
        constrain(totalExpenses, backgroundImage, labelSaleTo, saleTo, labelAmount, amount, labelTotal, total){ totalExpenses, backgroundImage, labelSaleTo, saleTo, labelAmount, amount, labelTotal, total in
            
            backgroundImage.width == backgroundImage.superview!.width - 44
            backgroundImage.height == 190
            backgroundImage.top == totalExpenses.top + 60
            backgroundImage.centerX == backgroundImage.superview!.centerX
            
            labelSaleTo.top == backgroundImage.top + 13
            labelSaleTo.leading == backgroundImage.leading + 17
            
            align(leading: labelSaleTo, saleTo, labelAmount, amount, labelTotal, total)
            
            saleTo.top == labelSaleTo.top + 27
            labelAmount.top == saleTo.top + 27
            amount.top == labelAmount.top + 27
            labelTotal.top == amount.top + 27
            total.top == labelTotal.top + 27
        }
        
        constrain(labelAmount, labelDate, date, labelPayment, payment){ labelAmount, labelDate, date, labelPayment, payment in
            
            labelDate.top == labelAmount.top
            labelDate.leading == labelAmount.leading + 170
            
            align(leading: labelDate, date, labelPayment, payment)
            
            date.top == labelDate.top + 27
            labelPayment.top == date.top + 27
            payment.top == labelPayment.top + 27
            
        }

    }

    

}

