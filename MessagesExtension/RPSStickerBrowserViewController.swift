//
//  RPSStickerBrowserViewController.swift
//  RockPaperScissors
//
//  Created by LeeDavid on 9/2/16.
//  Copyright © 2016 Daylight. All rights reserved.
//

import Foundation
import UIKit
import Messages



class RPSStickerBrowserViewController: MSStickerBrowserViewController {
    
    var stickers = [MSSticker]()
    
    
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
    


    
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return stickers.count
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
        return stickers[index]
    }
    
    
}
