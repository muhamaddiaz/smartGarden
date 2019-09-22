//
//  ViewController.swift
//  Onboarding
//
//  Created by Muhamad Diaz on 21/09/19.
//  Copyright © 2019 Muhamad Diaz. All rights reserved.
//

import UIKit
import paper_onboarding
import SwiftHEXColors

class ViewController: UIViewController {

    @IBOutlet weak var CustomView: GreetingView!
    @IBOutlet weak var GreetingButton: MainButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CustomView.delegate = self
        CustomView.dataSource = self
        
        GreetingButton.alpha = 0;
    }
    @IBAction func MulaiButtonPressed(_ sender: MainButton) {
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
}

extension ViewController: PaperOnboardingDelegate, PaperOnboardingDataSource {
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        let informationImage = [UIImage(named: "shovel"), UIImage(named: "plant"), UIImage(named: "ecology")]
        return [
            OnboardingItemInfo(informationImage: informationImage[index]!, title: "Gali", description: "Lemon drops croissant halvah chocolate cake wafer pie soufflé.", pageIcon: informationImage[index]!, color: UIColor.white, titleColor: UIColor(hexString: "09BC8A")!, descriptionColor: UIColor.black, titleFont: UIFont(name: "AvenirNext-Bold", size: 32)!, descriptionFont: UIFont(name: "AvenirNext-Regular", size: 20)!, descriptionLabelPadding: 8, titleLabelPadding: 8),
            OnboardingItemInfo(informationImage: informationImage[index]!, title: "Tanam", description: "Lemon drops croissant halvah chocolate cake wafer pie soufflé.", pageIcon: informationImage[index]!, color: UIColor.white, titleColor: UIColor(hexString: "09BC8A")!, descriptionColor: UIColor.black, titleFont: UIFont(name: "AvenirNext-Bold", size: 32)!, descriptionFont: UIFont(name: "AvenirNext-Regular", size: 20)!, descriptionLabelPadding: 8, titleLabelPadding: 8),
            OnboardingItemInfo(informationImage: informationImage[index]!, title: "Berkah", description: "Lemon drops croissant halvah chocolate cake wafer pie soufflé.", pageIcon: informationImage[index]!, color: UIColor.white, titleColor: UIColor(hexString: "09BC8A")!, descriptionColor: UIColor.black, titleFont: UIFont(name: "AvenirNext-Bold", size: 32)!, descriptionFont: UIFont(name: "AvenirNext-Regular", size: 20)!, descriptionLabelPadding: 8, titleLabelPadding: 8),
            ][index]
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 1 {
            if self.GreetingButton.alpha == 1 {
                UIView.animate(withDuration: 0.2) {
                    self.GreetingButton.alpha = 0
                }
            }
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 2 {
            UIView.animate(withDuration: 0.2) {
                self.GreetingButton.alpha = 1
            }
        }
    }
}

