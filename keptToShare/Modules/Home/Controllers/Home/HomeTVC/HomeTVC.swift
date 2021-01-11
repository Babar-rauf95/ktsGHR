//
//  HomeTVC.swift
//  keptToShare
//
//  Created by macbook on 31/12/2020.
//

import UIKit

class HomeTVC: UITableViewCell {
    
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure()
    {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }

}

extension HomeTVC : UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCVC", for: indexPath) as! HomeCVC
        return cell
    }
}
extension HomeTVC : UICollectionViewDelegate
{
    
}
