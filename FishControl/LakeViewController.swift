//
//  ViewController.swift
//  FishControl
//
//  Created by Douglas castilho on 20/06/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import UIKit
import Cartography

class LakeViewController: UIViewController {
    
    let imageView = UIImageView(image: UIImage(named: "fishControl.png"))
    
    let labelLake: UILabel = {
        let labelLake = UILabel()
        labelLake.text = "Lake"
        labelLake.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelLake.translatesAutoresizingMaskIntoConstraints = false
        return labelLake
    }()
    
    let lake: UILabel = {
        let lake = UILabel()
        lake.text = "Lake nº01"
        lake.translatesAutoresizingMaskIntoConstraints = false
        return lake
    }()
    

    let labelTemperature: UILabel = {
        let labelTemperature = UILabel()
        labelTemperature.text = "Temperature"
        labelTemperature.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelTemperature.translatesAutoresizingMaskIntoConstraints = false
        return labelTemperature
    }()
    
    let temperature: UILabel = {
        let temperature = UILabel()
        temperature.text = "17ºC"
        temperature.translatesAutoresizingMaskIntoConstraints = false
        return temperature
    }()
    
    let labelPh: UILabel = {
        let labelPh = UILabel()
        labelPh.text = "pH"
        labelPh.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelPh.translatesAutoresizingMaskIntoConstraints = false
        return labelPh
    }()
    
    let ph: UILabel = {
        let ph = UILabel()
        ph.text = "7.0"
        ph.translatesAutoresizingMaskIntoConstraints = false
        return ph
    }()
    

    let labelO2: UILabel = {
        let labelO2 = UILabel()
        labelO2.text = "O2"
        labelO2.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelO2.translatesAutoresizingMaskIntoConstraints = false
        return labelO2
    }()
    
    let o2: UILabel = {
        let labelO2 = UILabel()
        labelO2.text = "8 mg/l"
        labelO2.translatesAutoresizingMaskIntoConstraints = false
        return labelO2
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
        amount.text = "150 fishes"
        amount.translatesAutoresizingMaskIntoConstraints = false
        return amount
    }()
    
    let labelAverage: UILabel = {
        let labelAverage = UILabel()
        labelAverage.text = "Average Weight"
        labelAverage.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelAverage.translatesAutoresizingMaskIntoConstraints = false
        return labelAverage
    }()
    
    let average: UILabel = {
        let average = UILabel()
        average.text = "0.300 kgs"
        average.translatesAutoresizingMaskIntoConstraints = false
        return average
    }()
    
    let labelStage: UILabel = {
        let labelStage = UILabel()
        labelStage.text = "Stage"
        labelStage.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelStage.translatesAutoresizingMaskIntoConstraints = false
        return labelStage
    }()
    
    let stage: UILabel = {
        let stage = UILabel()
        stage.text = "Juvenil"
        stage.translatesAutoresizingMaskIntoConstraints = false
        return stage
    }()
    
    let labelGrow: UILabel = {
        let labelGrow = UILabel()
        labelGrow.text = "WillGrowIn"
        labelGrow.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelGrow.translatesAutoresizingMaskIntoConstraints = false
        return labelGrow
    }()
    
    let grow: UILabel = {
        let grow = UILabel()
        grow.text = "2 weeks"
        grow.translatesAutoresizingMaskIntoConstraints = false
        return grow
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        setupConstraints()
    }
    
    private func setupConstraints(){
        view.addSubview(labelLake)
        view.addSubview(labelTemperature)
        view.addSubview(lake)
        view.addSubview(temperature)
        view.addSubview(labelPh)
        view.addSubview(ph)
        view.addSubview(labelO2)
        view.addSubview(o2)
        
        imageView.frame = CGRect(x: 13, y: 22, width: 119, height: 58)
        view.addSubview(imageView)
        
        view.addSubview(labelLake)
        view.addSubview(lake)
        view.addSubview(labelAmount)
        view.addSubview(amount)
        view.addSubview(labelAverage)
        view.addSubview(average)
        view.addSubview(labelStage)
        view.addSubview(stage)
        view.addSubview(labelGrow)
        view.addSubview(grow)
        
        
        constrain(labelLake, labelTemperature, lake, temperature, labelPh, ph, labelO2, o2) { labelLake, labelTemperature, lake, temperature, labelPh, ph, labelO2, o2 in
            
            labelLake.top == labelLake.superview!.safeAreaLayoutGuide.top + 101
            labelLake.leading == labelLake.superview!.leading + 22
            labelTemperature.top == labelLake.top
            labelTemperature.leading == labelTemperature.superview!.leading + 228
            
            
            lake.top == labelLake.top + 23
            lake.leading == labelLake.leading
            
            temperature.top == labelTemperature.top + 23
            temperature.leading == labelTemperature.leading
            
            align(leading: labelLake, labelPh, ph)
            align(leading: labelTemperature, labelO2, o2)
            
            labelPh.top == lake.top + 27
            labelO2.top == temperature.top + 27
            
            ph.top == labelPh.top + 23
            o2.top == labelO2.top + 23
            
            
        }
        
        constrain(ph, labelAmount, amount, labelAverage, average){ ph, labelAmount, amount, labelAverage, average in
            
            
            labelAmount.top == ph.top + 78
            labelAmount.leading == labelAmount.superview!.safeAreaLayoutGuide.leading + 32
            
            align(leading: labelAmount, amount, labelAverage, average)

            amount.top == labelAmount.top + 27
            labelAverage.top == amount.top + 27
            average.top == labelAverage.top + 27
        }
        
        constrain(labelAmount, labelStage, stage, labelGrow, grow){ labelAmount, labelStage, stage, labelGrow, grow in
            
            labelStage.top == labelAmount.top
            labelStage.leading == labelAmount.leading + 200
            
            align(leading: labelStage, stage, labelGrow, grow)
            
            stage.top == labelStage.top + 27
            labelGrow.top == stage.top + 27
            grow.top == labelGrow.top + 27
            
        }

    }

    

}

