//
//  ViewController.swift
//  Tapper
//
//  Created by Omer Arif on 07/02/2017.
//  Copyright © 2017 OmerA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var maxTaps = 0
    var currentTaps = 0
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var tapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        
        if tapsTxt.text != nil && tapsTxt.text != "" {
        
            logoImg.isHidden = true
            tapsTxt.isHidden = true
            playBtn.isHidden = true
            
            tapsLbl.isHidden = false
            tapBtn.isHidden = false
            
            maxTaps = Int(tapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
        
    }
    
    @IBAction func coinTapping (sender: UIButton!){
        
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver(){
            restartGame()
        }
        
        
    }
    
    func restartGame(){
        maxTaps = 0
        tapsTxt.text = ""
        logoImg.isHidden = false
        tapsTxt.isHidden = false
        playBtn.isHidden = false
        
        tapsLbl.isHidden = true
        tapBtn.isHidden = true
        
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    func updateTapsLabel(){
        
        tapsLbl.text = "\(currentTaps) Taps"
    }

}

