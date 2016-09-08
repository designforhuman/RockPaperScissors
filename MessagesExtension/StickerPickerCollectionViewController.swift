//
//  StickerPickerCollectionViewController.swift
//  RockPaperScissors
//
//  Created by LeeDavid on 9/5/16.
//  Copyright © 2016 Daylight. All rights reserved.
//

import UIKit
import Messages
import ImageIO


class StickerPickerCollectionViewController: UICollectionViewController {
//    enum CollectionViewItem {
//        case sticker(MSSticker)
//        case addsticker
//    }
//    
    var stickers = [MSSticker]()
//    // properties
//    var items: [CollectionViewItem]!
//    
//    static let storyboardIdentifier = "StickerPickerCollectionViewController"
////    weak var delegate: StickerPickerCollectionViewControllerDelegate?
//    
//    // set up
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        items = [CollectionViewItem]()
//        items.append(.addsticker)
//        loadStickers()
//    }
//    
//    // UICollectionViewDataSource
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return items.count
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let item = items[indexPath.row]
//        
//        switch item {
//        case .sticker(let sticker):
//            return dequeueStickerCell(for: sticker, at: indexPath)
//        case .addsticker:
//            return dequeueAddStickerCell(at: indexPath)
//        }
//    }
//    
//    private func dequeueStickerCell(for sticker: MSSticker, at indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView?.dequeueReusableCell(withReuseIdentifier: StickerCell.reuseIdentifier, for: indexPath) as! StickerCell
//        
//        cell.stickerView.sticker = sticker
//        
//        return cell
//    }
//    
//    private func dequeueAddStickerCell(at indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView?.dequeueReusableCell(withReuseIdentifier: AddStickerCell.reuseIdentifier, for: IndexPath) as! AddStickerCell
//        return cell
//    }
//    
//    private func stickerCanAnimate(sticker: MSSticker) -> Bool {
//        guard let stickerImageSource = CGImageSourceCreateWithURL(sticker.imageFileURL, nil) else { return false }
//        let stickerImageFrameCount = CGImageSourceGetCount(stickerImageSource)
//        
//        return stickerImageFrameCount > 1
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        
//        if (cell.reuseIdentifier == StickerCell.reuseIdentifier) {
//            let stickerCell = cell as! StickerCell
//            if stickerCanAnimate(sticker: stickerCell.stickerView.sticker!) {
//                stickerCell.stickerView.startAnimating()
//            }
//        }
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        
//        if (cell.reuseIdentifier == StickerCell.reuseIdentifier) {
//            let stickerCell = cell as! StickerCell
//            if stickerCell.stickerView.isAnimating() {
//                stickerCell.stickerView.stopAnimating()
//            }
//        }
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let item = items[indexPath.row]
//        
//        switch item {
//        case .addsticker:
//            delegate?.tappedToAddNewStickersToCollection(self)
//            
//        default:
//            break
//        }
//    }
    
    
    func loadStickers() {
        createSticker(asset: "rock", localizedDescription: "Rock")
        createSticker(asset: "paper", localizedDescription: "Paper")
        createSticker(asset: "scissors", localizedDescription: "Scissors")
    }
    
    
    func createSticker(asset: String, localizedDescription: String) {
        guard let stickerPath = Bundle.main.path(forResource: asset, ofType: "png") else {
            print("couldn't create the sticker path for", asset)
            return
        }
        let stickerURL = URL(fileURLWithPath: stickerPath)
        
        let sticker: MSSticker
        do {
            try sticker = MSSticker(contentsOfFileURL: stickerURL, localizedDescription: localizedDescription)
            stickers.append(sticker)
        } catch {
            print(error)
            return
        }
    }

}
















