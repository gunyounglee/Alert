//
//  ViewController.swift
//  Alert
//
//  Created by TJ on 2022/04/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImgOnOff: UIImageView!
    var imgOn = UIImage(named: "lamp_on.png")//켜진 전구 이미지
    var imgOff = UIImage(named: "lamp_off.png")//꺼진 전구 이미지
    var imgRemove = UIImage(named: "lamp_remove.png") //삭제된 전구 이미지
    	
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        onAction()
        
    }

    @IBAction func btnOn(_ sender: UIButton) {
        if ImgOnOff.image != imgOn {
           onAction()
        }else {
            on()
            
        }
          
    
    }
    @IBAction func btnOff(_ sender: UIButton) {
    
        if ImgOnOff.image != imgOff{
            offAction()
        }else{
            off()
    
        }
    }
    @IBAction func btnDel(_ sender: UIButton) {
    
            remove()
      
    }

    func on(){
        let testAlert = UIAlertController(title: "경고", message: "현재ON상태입니다.", preferredStyle: .alert)
               // UIAlertAction 설정
        let actionOn = UIAlertAction(title: "네 알겠습니다", style: .default, handler: nil)
            testAlert.addAction(actionOn)
            present(testAlert, animated: false, completion: nil)
              
             
    }
    func off(){
        
        let testAlert = UIAlertController(title: "경고", message: "현재off상태입니다.", preferredStyle: .alert)
        // UIAlertAction 설정
        let actionoff = UIAlertAction(title: "네 알겠습니다", style: .default, handler: nil)
        testAlert.addAction(actionoff)
        present(testAlert, animated: false, completion: nil)
     
    }
    
    func remove(){
        let testAlert = UIAlertController(title: "램프제거?", message: "램프를 제거할까요?", preferredStyle: .alert)
        // UIAlertAction 설정
        let actionOn = UIAlertAction(title: "아니요 켭니다.", style: .default, handler: {[self]ACTION in onAction()})
        let actionOff = UIAlertAction(title: "아니요 끕니다.", style: .default, handler: {[self]ACTION in offAction()})
        let actionRemove = UIAlertAction(title: "네 제거합니다.", style: .default, handler: {[self]ACTION in removeAction()})
       
        testAlert.addAction(actionOn)
        testAlert.addAction(actionOff)
        testAlert.addAction(actionRemove)
        present(testAlert, animated: false, completion: nil)
       
    }
    
    func onAction(){
        ImgOnOff.image = imgOn
    }
    func offAction(){
        ImgOnOff.image = imgOff
    }
    func removeAction(){
        ImgOnOff.image = imgRemove
    }

}

