//
//  ViewController.swift
//  14ToDo
//
//  Created by nhajime on 2020/07/15.
//  Copyright © 2020 Hajime Nutahara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contents = makeContents()
        
        printContets(contents: contents)
        
//        let deadlines = makeDeadlines()
//        print(deadlines)
//        for d in deadlines {
//            print(d.rawValue)
//        }
//        print(names)
//        print(makeResetTimes())
//        let md = makeResetDays()
//        for day in md {
//            print(day?.rawValue ?? "nil")
//        }
    }
    

}

