//
//  ViewController.swift
//  CollectionView
//
//  Created by Jervy Umandap on 6/25/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        let button = UIButton(frame: CGRect(
                                x: 0,
                                y: 0,
                                width: 220,
                                height: 50))
        
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        
        button.center = view.center
        
        button.setTitle("Show Collection", for: .normal)
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
    }
    
    @objc private func didTapButton() {
        // Creating layout
        let layout = UICollectionViewFlowLayout()
        let cellSize = view.width/3
        layout.itemSize = CGSize(width: cellSize-3,
                                 height: cellSize-3)
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 1,
                                           left: 1,
                                           bottom: 1,
                                           right: 1)
        
        // instatiate collectionVC
        let vc = GridCollectionViewController(collectionViewLayout: layout)
        vc.title = "Grid View"
        vc.navigationItem.largeTitleDisplayMode = .never
        
        // navigationVC
        let navVC = UINavigationController(rootViewController: vc)
        navVC.navigationBar.prefersLargeTitles = false
        
        // presenting vc
        present(navVC, animated: true, completion: nil)
    }


}

