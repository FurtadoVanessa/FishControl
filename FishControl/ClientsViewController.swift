//
//  ClientsViewController.swift
//  FishControl
//
//  Created by Douglas castilho on 22/06/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import UIKit
import Cartography

class ClientsViewController: UIViewController {
    
    let imageView = UIImageView(image: UIImage(named: "fishControl.png"))
    
    let labelTotalClients: UILabel = {
        let labelTotalClients = UILabel()
        labelTotalClients.text = "Total Clients"
        labelTotalClients.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelTotalClients.translatesAutoresizingMaskIntoConstraints = false
        return labelTotalClients
    }()
    
    let totalClients: UILabel = {
        let totalClients = UILabel()
        totalClients.text = "20 clients"
        totalClients.translatesAutoresizingMaskIntoConstraints = false
        return totalClients
    }()
    

    let labelTotalSales: UILabel = {
        let labelTotalSales = UILabel()
        labelTotalSales.text = "Total Sales"
        labelTotalSales.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelTotalSales.translatesAutoresizingMaskIntoConstraints = false
        return labelTotalSales
    }()
    
    let totalSales: UILabel = {
        let totalSales = UILabel()
        totalSales.text = "55"
        totalSales.translatesAutoresizingMaskIntoConstraints = false
        return totalSales
    }()
    
    let backgroundImage = UIImageView(image: UIImage(named: "lakeTwo.jpg"))
    
    let labelClient: UILabel = {
        let labelClient = UILabel()
        labelClient.text = "Client"
        labelClient.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelClient.translatesAutoresizingMaskIntoConstraints = false
        return labelClient
    }()
    
    let client: UILabel = {
        let client = UILabel()
        client.text = "John Johnes"
        client.translatesAutoresizingMaskIntoConstraints = false
        return client
    }()
    
    let labelLastPurchase: UILabel = {
        let labelLastPurchase = UILabel()
        labelLastPurchase.text = "Last Purchase"
        labelLastPurchase.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelLastPurchase.translatesAutoresizingMaskIntoConstraints = false
        return labelLastPurchase
    }()
    
    let lastPurchase: UILabel = {
        let lastPurchase = UILabel()
        lastPurchase.text = "2 kgs"
        lastPurchase.translatesAutoresizingMaskIntoConstraints = false
        return lastPurchase
    }()
    
    let labelPurchases: UILabel = {
        let labelPurchases = UILabel()
        labelPurchases.text = "Purchases"
        labelPurchases.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelPurchases.translatesAutoresizingMaskIntoConstraints = false
        return labelPurchases
    }()
    
    let purchases: UILabel = {
        let purchases = UILabel()
        purchases.text = "10"
        purchases.translatesAutoresizingMaskIntoConstraints = false
        return purchases
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
    
    let labelSince: UILabel = {
        let labelSince = UILabel()
        labelSince.text = "Since"
        labelSince.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelSince.translatesAutoresizingMaskIntoConstraints = false
        return labelSince
    }()
    
    let since: UILabel = {
        let since = UILabel()
        since.text = "20/06/2020"
        since.translatesAutoresizingMaskIntoConstraints = false
        return since
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        setupConstraints()
    }
    
    private func setupConstraints(){
        view.addSubview(labelTotalClients)
        view.addSubview(labelTotalSales)
        view.addSubview(totalClients)
        view.addSubview(totalSales)
        
        imageView.frame = CGRect(x: 13, y: 22, width: 119, height: 58)
        view.addSubview(imageView)
        
        backgroundImage.isOpaque = false
        backgroundImage.alpha = 0.30
        backgroundImage.layer.cornerRadius = 10
        backgroundImage.clipsToBounds = true
        view.addSubview(backgroundImage)
        
        view.addSubview(labelClient)
        view.addSubview(client)
        view.addSubview(labelLastPurchase)
        view.addSubview(lastPurchase)
        view.addSubview(labelPurchases)
        view.addSubview(purchases)
        view.addSubview(labelDate)
        view.addSubview(date)
        view.addSubview(labelSince)
        view.addSubview(since)
        
        
        constrain(labelTotalClients, labelTotalSales, totalClients, totalSales) { labelTotalClients, labelTotalSales, totalClients, totalSales in
            
            labelTotalClients.top == labelTotalClients.superview!.safeAreaLayoutGuide.top + 101
            labelTotalClients.leading == labelTotalClients.superview!.leading + 22
            
            
            labelTotalSales.top == labelTotalClients.top
            labelTotalSales.leading == labelTotalSales.superview!.leading + 228
            
            
            totalClients.top == labelTotalClients.top + 23
            totalClients.leading == labelTotalClients.leading
            
            totalSales.top == labelTotalSales.top + 23
            totalSales.leading == labelTotalSales.leading
            
            
        }
        
        constrain(totalClients, backgroundImage, labelClient, client, labelLastPurchase, lastPurchase, labelPurchases, purchases){ totalClients, backgroundImage, labelClient, client, labelLastPurchase, lastPurchase, labelPurchases, purchases in
            
            backgroundImage.width == backgroundImage.superview!.width - 44
            backgroundImage.height == 190
            backgroundImage.top == totalClients.top + 60
            backgroundImage.centerX == backgroundImage.superview!.centerX
            
            labelClient.top == backgroundImage.top + 13
            labelClient.leading == backgroundImage.leading + 17
            
            align(leading: labelClient, client, labelLastPurchase, lastPurchase, labelPurchases, purchases)
            
            client.top == labelClient.top + 27
            labelLastPurchase.top == client.top + 27
            lastPurchase.top == labelLastPurchase.top + 27
            labelPurchases.top == lastPurchase.top + 27
            purchases.top == labelPurchases.top + 27
        }
        
        constrain(labelLastPurchase, labelDate, date, labelSince, since){ labelLastPurchase, labelDate, date, labelSince, since in
            
            labelDate.top == labelLastPurchase.top
            labelDate.leading == labelLastPurchase.leading + 170
            
            align(leading: labelDate, date, labelSince, since)
            
            date.top == labelDate.top + 27
            labelSince.top == date.top + 27
            since.top == labelSince.top + 27
            
        }

    }

    

}

