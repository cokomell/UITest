//
//  CustomCollectionViewCell.swift
//  RickandMortyUIKit
//
//  Created by Cokomel on 18.07.2021.
//

import UIKit



class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var characterImage: UIImageView!
    
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
 
    //   override init() {
//
//        starButton.setImage(#imageLiteral(resourceName: "heart"), for: .normal)
//        starButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//
//        starButton.tintColor = .red
//        //starButton.addTarget(self, action: #selector(handleMarkAsFavorite), for: .touchUpInside)
//
//        accessoryView = starButton
//
//   }
    
   

    func setupView() {
        
        print("çağrıldı")
//        view2.translatesAutoresizingMaskIntoConstraints=false
//        view2.backgroundColor = .blue
        self.backgroundColor = .red
        contentView.translatesAutoresizingMaskIntoConstraints=false
        contentView.backgroundColor = .black
        favButton.translatesAutoresizingMaskIntoConstraints=false
        favButton.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
        favButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
//        
       // favButton.translatesAutoresizingMaskIntoConstraints=false
//        characterImage.translatesAutoresizingMaskIntoConstraints=false
//        characterImage.topAnchor.constraint(equalTo: self.topAnchor).isActive=true
//        characterImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
       // favButton.topAnchor.constraint(equalTo: view2.topAnchor).isActive=true
       // favButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive=true
//        characterImage.topAnchor.constraint(equalTo: self.topAnchor).isActive=true
//        characterImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive=true
//        characterImage.centerYAnchor.constraint(equalTo: favButton.centerYAnchor).isActive=true
        
        //view2.addSubview(favButton)
//        view2.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
//        view2.translatesAutoresizingMaskIntoConstraints=false
//        contentView.translatesAutoresizingMaskIntoConstraints=false
//        view2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
//        view2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
//        view2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive=true
       
        
        
//        favButton.translatesAutoresizingMaskIntoConstraints = false
//        favButton.topAnchor.constraint(equalTo: view2.topAnchor).isActive = true
//        favButton.leadingAnchor.constraint(equalTo: view2.leadingAnchor).isActive = true
//        
        
        
//        characterImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        characterImage.translatesAutoresizingMaskIntoConstraints = false
//        characterImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//
//
//        let heightAnchorConstraint = characterImage.heightAnchor.constraint(equalTo: characterImage.widthAnchor)
//        heightAnchorConstraint.priority = .defaultHigh
//        heightAnchorConstraint.isActive = true

    }

    

    
}
