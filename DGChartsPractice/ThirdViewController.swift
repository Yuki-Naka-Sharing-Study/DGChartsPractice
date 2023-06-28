//
//  ThirdViewController.swift
//  DGChartsPractice
//
//  Created by 仲優樹 on 2023/06/29.
//

import UIKit
import DGCharts

class ThirdViewController: UIViewController,ChartViewDelegate {
    
    var pieChart = PieChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pieChart.frame = CGRect(x: 0,
                                 y: 0,
                                 width: self.view.frame.size.width,
                                 height: self.view.frame.size.height)
        
        pieChart.center = view.center
        view.addSubview(pieChart)
        
        var entries = [ChartDataEntry]()
        
        for x in  0..<10 {
            entries.append(ChartDataEntry(x: Double(x),
                                          y: Double(x)))
        }
        
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.pastel()
        
        let data = PieChartData(dataSet: set)
        pieChart.data = data
    }

}
