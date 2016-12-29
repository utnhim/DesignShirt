//
//  ViewController.swift
//  shirt
//
//  Created by UtNhim on 11/11/16.
//  Copyright © 2016 UtNhim. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var sticker: UIImageView!
    
    @IBOutlet weak var addImage: UIButton!
    @IBOutlet weak var saveImage: UIButton!
    
    @IBOutlet weak var customView: ShirtView!
    @IBOutlet weak var text: UITextField!
    
    var imageReturn:UIImage!
    
    var drag:Bool = false
    
    var location = CGPoint(x: 0, y: 0)
    
    var addX = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sticker.center = CGPoint(x: 160, y: 330)
        sticker.backgroundColor = UIColor.blue
        text.text = "hello"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches{
//            let point = touch.location(in: self.view)
//            location = CGPoint(x: point.x, y: point.y)
//            sticker.center = location
//            drag = true
//        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches{
//            if(drag){
//            let point = touch.location(in: self.view)
//            location = CGPoint(x: point.x, y: point.y)
//            sticker.center = location
//            }
//        }

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        drag = false
    }
    
    @IBAction func addStickerToImage(_ sender: Any) {
        let dragView = DragView(frame: CGRect(x: 100, y: 100, width: 44, height: 44))
        dragView.isUserInteractionEnabled = true
        dragView.image = UIImage(named: "cover")
        dragView.contentMode = .scaleAspectFit
        self.sticker.superview?.addSubview(dragView)
        
        customView.addSubview()
        let image: UIImage = UIImage(named: "cover")!
        
        
        let imageView = UIImageView(image: image)
        imageView.isUserInteractionEnabled = true
        imageView.frame = CGRect(x: addX, y: addX, width: 100, height: 200)
//        sticker.addSubview(imageView)
        
        
        addX+=10
        
        let size = CGSize(width: 3307, height: 4677)
        UIGraphicsBeginImageContext(size)
        sticker.image?.draw(in: CGRect(x: 0, y: 0, width: 3307, height: 4677))
        image.draw(in: CGRect(x: addX, y: addX, width: 1654, height: 2339))
        addX+=100
        image.draw(in: CGRect(x: addX, y: addX, width: 1654, height: 2339))
        addX+=100
        image.draw(in: CGRect(x: addX, y: addX, width: 1654, height: 2339))
        addX+=100
        image.draw(in: CGRect(x: addX, y: addX, width: 1654, height: 2339))

        imageReturn = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }


    @IBAction func saveImage(_ sender: Any) {
        
        self.text.text = "Xin chào"
        UIImageWriteToSavedPhotosAlbum(imageReturn, nil, nil, nil)
        
    }
}
