//
//  addCity.swift
//  WeatherApp
//
//  Created by Поляндий on 09.08.2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func alertAddNewCity(name: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        
        let alertController = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        
        let alertOK = UIAlertAction(title: "Ок", style: .default) { (action) in
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else { return }
            completionHandler(text)
        }
        
        alertController.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) { (_) in }
        
        alertController.addAction(alertOK)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
}
