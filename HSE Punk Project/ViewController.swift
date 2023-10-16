//
//  ViewController.swift
//  HSE Punk Project
//
//  Created by Рогаткин Роман on 09.10.2023.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        let url: URL = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard
                let data = data,
                let response = response,
                error == nil
            else {
                return
            }
//            let decoder = JSONDecoder()
            // Обработка данных
            let str = String(data: data, encoding: .utf8)
            print("Полученные данные: \(str ?? "")")
        }).resume()

    }
}

