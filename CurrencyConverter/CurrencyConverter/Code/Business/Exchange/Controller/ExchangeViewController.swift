//
//  ExchangeViewController.swift
//  CurrencyConverter
//
//  Created by Sergey Tszyu on 31.05.2023.
//

import UIKit

final class ExchangeViewController: UIViewController {
    
    // MARK: - @IBOutlets
    
    @IBOutlet private weak var firstCountryFlagImage: UIImageView!
    @IBOutlet private weak var firstCurrencyCodeLabel: UILabel!
    @IBOutlet private weak var secondCountryFlagImage: UIImageView!
    @IBOutlet private weak var secoundCurrencyCodeLabel: UILabel!
    @IBOutlet private weak var sumTextField: UITextField!
    @IBOutlet private weak var resultSumLabel: UILabel!
    
    // MARK: - Properties
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

// MARK: - Private

private extension ExchangeViewController {
    
    func configure() {
        firstCountryFlagImage.image = UIImage(named: "usd")
        secondCountryFlagImage.image = UIImage(named: "eur")
        firstCurrencyCodeLabel.text = "USD"
        secoundCurrencyCodeLabel.text = "EUR"
        sumTextField.placeholder = "0"
        resultSumLabel.text = "0"
    }
    
    @IBAction private func exhangeAction(_ sender: UIButton) {
        guard let amount = sumTextField.text,
              let fromCurrency = firstCurrencyCodeLabel.text,
              let toCurrency = secoundCurrencyCodeLabel.text else {
            return
        }
        
    }
}
