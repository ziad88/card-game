//
//  ViewController.swift
//  firstGUI
//
//  Created by ziad ahmed on 2/19/20.
//  Copyright © 2020 zeedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftimageview: UIImageView!
    
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var lscore=0
    var rscore=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
    }

    
    @IBAction func dealtapped(_ sender: Any) {
        let lnum=Int.random(in: 2...14)
        let rnum=Int.random(in: 2...14)
       leftimageview.image=UIImage(named: "card\(lnum)")
        rightimageview.image=UIImage(named: "card\(rnum)")
        
        if(lnum>rnum){
            lscore+=1
            leftscorelabel.text=String(lscore)
             rightscorelabel.text=String(rscore)
        }else if(lnum<rnum){
            rscore+=1
            rightscorelabel.text=String(rscore)
            leftscorelabel.text=String(lscore)
        }else if(lnum==rnum){
           
             leftscorelabel.text="Tie"
            rightscorelabel.text="Tie"
            
        }
    }
    

}

