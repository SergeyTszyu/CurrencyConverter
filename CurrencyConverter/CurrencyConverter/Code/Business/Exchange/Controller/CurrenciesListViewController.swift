//
//  CurrenciesListViewController.swift
//  CurrencyConverter
//
//  Created by Sergey Tszyu on 31.05.2023.
//

import UIKit

final class CurrenciesListViewController: UIViewController {
    
    // MARK: - @IBOutlets
    
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Properties
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

// MARK: - Private

private extension CurrenciesListViewController {
    
    func configure() {
        
    }
}

// MARK: - UITableViewDataSource

extension CurrenciesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
