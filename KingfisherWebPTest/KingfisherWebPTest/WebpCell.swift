//
//  WebpCell.swift
//  KingfisherWebPTest
//
//  Created by SONG on 4/18/24.
//

import UIKit
import Kingfisher


class WebpCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView?
    
    
    func setImage(_ urlStr: String) {
        imageView?.kf.setImage(with: URL(string: urlStr)) { result in
            switch result {
            case .success(let success):
                debugPrint("set image success \(success.cacheType)")
            case .failure(let error):
                debugPrint("set image error \(error.localizedDescription)")
            }
        }
    }
}
