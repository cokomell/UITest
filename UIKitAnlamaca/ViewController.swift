//
//  ViewController.swift
//  UIKitAnlamaca
//
//  Created by Cokomel on 16.08.2021.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

//    private let itemsPerRow: CGFloat = 2
//    private let sectionInsets = UIEdgeInsets(
//      top: 50.0,
//      left: 20.0,
//      bottom: 50.0,
//      right: 20.0)

    @IBOutlet weak var gridListButton: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var character1 = CharacterData(id: 1, name: "Merve", status: "Canlı", species: "Deli", image: "Merve")
    var character2 = CharacterData(id: 2, name: "Hakan", status: "Canlı", species: "Haco", image: "Hakan")
    var character3 = CharacterData(id: 3, name: "Berkay", status: "Canlı", species: "Çılgın", image: "Berkay")
    var character4 = CharacterData(id: 4, name: "Ozan", status: "Canlı", species: "Mutsuz", image: "Ozan")
    
    
   
    var characterResult = [CharacterData]()
    

    var characterNumber:Int = 0
    var count = 0
    
    var isGridFlowLayoutUsed: Bool = false {
        didSet {
            updateButtonAppearance()
        }
    }
    
    var gridFlowLayout = GridFlowLayout()
    var listFlowLayout = ListFlowLayout()
    
    fileprivate func updateButtonAppearance() {
        //        gridButton.isSelected = isGridFlowLayoutUsed
        //        gridButton.backgroundColor = gridButton.isSelected ? UIColor.groupTableViewBackground : UIColor.green
        //
        //        listButton.isSelected = !isGridFlowLayoutUsed
        //        listButton.backgroundColor = listButton.isSelected ? UIColor.groupTableViewBackground : UIColor.green

        let layout = isGridFlowLayoutUsed ? gridFlowLayout : listFlowLayout
        UIView.animate(withDuration: 0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(layout, animated: true)
        }
    }
    
    
    @IBAction func segmentSelection(_ sender: UISegmentedControl) {
        switch gridListButton.selectedSegmentIndex
          {
          case 0:
            isGridFlowLayoutUsed = true
          case 1:
            isGridFlowLayoutUsed = false
          default:
              break
          }
    }
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        collectionView.dataSource = self
        collectionView.delegate = self

        collectionView.collectionViewLayout = gridFlowLayout
        isGridFlowLayoutUsed = true

        characterResult.append(contentsOf: [character1,character2,character3,character4])
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
        // Do any additional setup after loading the view.
    }
    
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        return characterResult.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cellIdentifier = "CollectionViewCharacterCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CustomCollectionViewCell
        
        let thisCharacter: CharacterData!
        
    
        thisCharacter = characterResult[indexPath.item]
    
        //cell.backgroundColor = .black
        
        //   cell.index=characterResult[indexPath.row].id
        
        //ADD Target ve sender.tag ile olan kısım
        
        //        cell.favButton.tag = characterResult[indexPath.row].id
        //        cell.favButton.addTarget(self, action: #selector(favButtonClicked(sender:)), for: .touchUpInside)
        
        //        fav?.filter{$0.id==self.characterResult[indexPath.row].id)}
        
        
        cell.nameLabel.text=thisCharacter.name
        cell.speciesLabel.text=thisCharacter.species
        cell.statusLabel.text=thisCharacter.status
        
        var image: UIImage = UIImage(named: thisCharacter.image)!
        cell.characterImage.image = image
       
//        cell.favButton.translatesAutoresizingMaskIntoConstraints=false
//        cell.view2.translatesAutoresizingMaskIntoConstraints=false
//        cell.view2.backgroundColor = .red
// //       cell.favButton.leadingAnchor.constraint(equalTo: cell.view2.leadingAnchor).isActive=true
//        cell.contentView.translatesAutoresizingMaskIntoConstraints=false
//        cell.contentView.backgroundColor = .black
//        cell.view2.topAnchor.constraint(equalTo: cell.contentView.topAnchor).isActive=true
//        cell.view2.translatesAutoresizingMaskIntoConstraints=false
//        DispatchQueue.main.async {
//            cell.setupView()
//        }
 //       cell.view2.backgroundColor = .red
        cell.setupView()
//        cell.view2.backgroundColor = .red
//        cell.contentView.backgroundColor = .black
//        cell.view2.translatesAutoresizingMaskIntoConstraints=false
//        cell.contentView.translatesAutoresizingMaskIntoConstraints=false
//        cell.view2.bottomAnchor.constraint(equalTo: cell.self.bottomAnchor).isActive = true
        //  cell.view2.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor).isActive = true
        return cell
        
        
        }
        
    
 
    


        
        
    
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let position = scrollView.contentOffset.y
        var tableViewContentSize = collectionView.contentSize.height
        var scrollViewSize = scrollView.frame.size.height
//        print("position \(position)")
//        print("tableViewContentSize \(tableViewContentSize)")
//        print("scrollViewSize \(scrollViewSize)")
       
//        print(position)
        if tableViewContentSize != 0 {
        if position > (tableViewContentSize-scrollViewSize){
            print("fetching")
    
           
            
            
        }
        }
    }
    

    }

extension UIView {

    func setCardView(view : UIView){

//        view.layer.cornerRadius = 2.0
//        view.layer.borderColor  =  UIColor.lightGray.cgColor
//        view.layer.borderWidth = 2.0
//        view.layer.shadowOpacity = 1.0
//        view.layer.shadowColor =  UIColor.clear.cgColor
//        view.layer.shadowRadius = 2.0
//        view.layer.shadowOffset = CGSize(width:3, height: 3)
//        view.layer.masksToBounds = true

    }
}

// MARK: - Collection View Flow Layout Delegate
//extension CharacterListViewController: UICollectionViewDelegateFlowLayout {
//  // 1
//  func collectionView(
//    _ collectionView: UICollectionView,
//    layout collectionViewLayout: UICollectionViewLayout,
//    sizeForItemAt indexPath: IndexPath
//  ) -> CGSize {
//    // 2
//    let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
//    let availableWidth = view.frame.width - paddingSpace
//    let widthPerItem = availableWidth / itemsPerRow
//
//    return CGSize(width: widthPerItem, height: widthPerItem)
//  }
//
//  // 3
//  func collectionView(
//    _ collectionView: UICollectionView,
//    layout collectionViewLayout: UICollectionViewLayout,
//    insetForSectionAt section: Int
//  ) -> UIEdgeInsets {
//    return sectionInsets
//  }
//
//  // 4
//  func collectionView(
//    _ collectionView: UICollectionView,
//    layout collectionViewLayout: UICollectionViewLayout,
//    minimumLineSpacingForSectionAt section: Int
//  ) -> CGFloat {
//    return sectionInsets.left
//  }
//}
