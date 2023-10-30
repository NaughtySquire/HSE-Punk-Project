//
//  ViewController.swift
//  HSE Punk Project
//
//  Created by Рогаткин Роман on 09.10.2023.
//

import UIKit

final class ViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
//        tableView.dataSource = self
        return tableView
    }()

    private lazy var spinnerView =  UIActivityIndicatorView(style: .large)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        tableView.addSubview(spinnerView)
        spinnerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            spinnerView.centerXAnchor.constraint(equalTo: tableView.centerXAnchor),
            spinnerView.centerYAnchor.constraint(equalTo: tableView.centerYAnchor)
        ])
        spinnerView.startAnimating()
    }
}
