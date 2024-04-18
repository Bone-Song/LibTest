//
//  ViewController.swift
//  KingfisherWebPTest
//
//  Created by SONG on 4/18/24.
//

import UIKit
import Kingfisher
import KingfisherWebP

class ViewController: UIViewController {
    
    @IBOutlet weak var itemView: UICollectionView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        KingfisherManager.shared.defaultOptions += [
          .processor(WebPProcessor.default),
          .cacheSerializer(WebPSerializer.default)
        ]
    }
}


extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: WebpCell = collectionView.dequeueReusableCell(withReuseIdentifier: "webpCell", for: indexPath) as? WebpCell {
            cell.setImage("https://kr.bandisoft.com/honeycam/webp/imgs/overwatch_tr.webp")
            return cell
        }
        return UICollectionViewCell()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.size.width - 15) / 2
        return CGSize(width: width, height: width)
    }
}
