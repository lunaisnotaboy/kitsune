//
//  ViewController.swift
//  Kitsune
//
//  Created by Robert Wilcox on 6/2/22.
//  Copyright © 2022 Luna Nova. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet var valueLabel: NSTextField!
    @IBOutlet var showNumberButton: NSButton!

    @IBAction func showRandomNumber(_ sender: Any) {
        let randomValue = generateRandomNumber()
        updateLabel(value: randomValue)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }

    func generateRandomNumber() -> Int {
        let minValue = 0
        let maxValue = 99
        return Int.random(in: minValue...maxValue)
    }

    func updateLabel(value: Int) {
        valueLabel.stringValue = value.description
    }
}
