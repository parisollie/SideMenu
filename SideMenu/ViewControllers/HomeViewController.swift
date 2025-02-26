//
//  HomeViewController.swift
//  SideMenu
//
//  Created by Paul Jaime Felix Flores on 13/10/23.
//

import UIKit

protocol HomeViewControllerDelegate: AnyObject{
    func didTapMenuButtton()
}

class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(didTapMenuButton))
    }
    
    @objc func didTapMenuButton(){
        delegate?.didTapMenuButtton()
    }
}
