//
//  ViewController.swift
//  AES666
//
//  Created by 林郁琦 on 2023/12/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //放入參考圖以便繪製
        //let imageView = UIImageView(frame: CGRect(x: 0, y: 100, width: 350 , height: 350))
        //imageView.image = UIImage(named: "AES666")
        //imageView.alpha = 0.4
        //view.addSubview(imageView)
        
        //圓框
        let aDegree = CGFloat.pi / 180
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 176, y: 271), radius: 165, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.lineWidth = 5
        circleLayer.strokeColor = UIColor.black.cgColor
        circleLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(circleLayer)
        
        //頭
        let headPath = UIBezierPath()
        headPath.move(to: CGPoint(x: 175, y: 122))
        headPath.addQuadCurve(to: CGPoint(x: 124, y: 294), controlPoint: CGPoint(x: 120, y: 205))
        headPath.addCurve(to: CGPoint(x: 230, y: 302), controlPoint1: CGPoint(x: 93, y: 380), controlPoint2: CGPoint(x: 270, y: 365))
        headPath.addQuadCurve(to: CGPoint(x: 208, y: 126), controlPoint: CGPoint(x: 235, y: 233))
        headPath.addCurve(to: CGPoint(x: 184, y: 208), controlPoint1: CGPoint(x: 198, y: 120), controlPoint2: CGPoint(x: 210, y: 220))
        headPath.addQuadCurve(to: CGPoint(x: 177, y: 140), controlPoint: CGPoint(x: 166, y: 198))
        headPath.addQuadCurve(to: CGPoint(x: 175, y: 122), controlPoint: CGPoint(x: 180, y: 115))
        let headLayer = CAShapeLayer()
        headLayer.path = headPath.cgPath
        headLayer.lineWidth = 3
        headLayer.strokeColor = UIColor.black.cgColor
        headLayer.fillColor = UIColor(red: 196/255, green: 13/255, blue: 35/255, alpha: 255/255).cgColor
        view.layer.addSublayer(headLayer)
        
        //眼睛
        let eyesPath = UIBezierPath()
        eyesPath.move(to: CGPoint(x: 148, y: 280))
        eyesPath.addQuadCurve(to: CGPoint(x: 155, y: 279), controlPoint: CGPoint(x: 152, y: 276))
        eyesPath.addQuadCurve(to: CGPoint(x: 148, y: 280), controlPoint: CGPoint(x: 152, y: 281))
        eyesPath.move(to: CGPoint(x: 202, y: 282))
        eyesPath.addQuadCurve(to: CGPoint(x: 208, y: 283), controlPoint: CGPoint(x: 206, y: 280))
        eyesPath.addQuadCurve(to: CGPoint(x: 202, y: 282), controlPoint: CGPoint(x: 205, y: 284))
        let eyesLayer  = CAShapeLayer()
        eyesLayer.path = eyesPath.cgPath
        eyesLayer.lineWidth = 0.8
        eyesLayer.strokeColor = UIColor.black.cgColor
        eyesLayer.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(eyesLayer)
        
        //鼻子
        let nosePath = UIBezierPath()
        nosePath.move(to: CGPoint(x: 177, y: 291))
        nosePath.addQuadCurve(to: CGPoint(x: 176, y: 296), controlPoint: CGPoint(x: 170, y: 294))
        nosePath.addQuadCurve(to: CGPoint(x: 177, y: 291), controlPoint: CGPoint(x: 175, y: 294))
        let noseLayer = CAShapeLayer()
        noseLayer.path = nosePath.cgPath
        noseLayer.lineWidth = 0.3
        noseLayer.strokeColor = UIColor.black.cgColor
        noseLayer.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(noseLayer)
        
        //嘴巴
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 175, y: 301))
        mouthPath.addQuadCurve(to: CGPoint(x: 179, y: 301), controlPoint: CGPoint(x: 177, y: 302))
        mouthPath.addQuadCurve(to: CGPoint(x: 175, y: 301), controlPoint: CGPoint(x: 177, y: 300))
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = mouthPath.cgPath
        mouthLayer.lineWidth = 0.8
        mouthLayer.strokeColor = UIColor.black.cgColor
        mouthLayer.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(mouthLayer)
        
        //手臂
        let armPath = UIBezierPath()
        armPath.move(to: CGPoint(x: 102, y: 402))
        armPath.addLine(to: CGPoint(x: 100, y: 415))
        armPath.addLine(to: CGPoint(x: 114, y: 422))
        armPath.addLine(to: CGPoint(x: 117, y: 403))
        armPath.addLine(to: CGPoint(x: 102, y: 401))
        armPath.move(to: CGPoint(x: 249, y: 402))
        armPath.addLine(to: CGPoint(x: 249, y: 417))
        armPath.addLine(to: CGPoint(x: 233, y: 424))
        armPath.addLine(to: CGPoint(x: 231, y: 404))
        armPath.addLine(to: CGPoint(x: 249, y: 402))
        let armLAayer = CAShapeLayer()
        armLAayer.path = armPath.cgPath
        armLAayer.lineWidth = 1.5
        armLAayer.strokeColor = UIColor.black.cgColor
        armLAayer.fillColor = UIColor(red: 196/255, green: 13/255, blue: 35/255, alpha: 255/255).cgColor
        view.layer.addSublayer(armLAayer)
        
        //衣服
        let clothPath = UIBezierPath()
        clothPath.move(to: CGPoint(x: 134, y: 340))
        clothPath.addQuadCurve(to: CGPoint(x: 101, y: 401), controlPoint: CGPoint(x: 105, y: 371))
        clothPath.addLine(to: CGPoint(x: 118, y: 403))
        clothPath.move(to: CGPoint(x: 134, y: 340))
        clothPath.addQuadCurve(to: CGPoint(x: 114, y: 426), controlPoint: CGPoint(x: 118, y: 384))
        clothPath.move(to: CGPoint(x: 116, y: 363))
        clothPath.addQuadCurve(to: CGPoint(x: 127, y: 363), controlPoint: CGPoint(x: 122, y: 362))
        clothPath.move(to: CGPoint(x: 109, y: 376))
        clothPath.addQuadCurve(to: CGPoint(x: 123, y: 376), controlPoint: CGPoint(x: 117, y: 375))
        clothPath.move(to: CGPoint(x: 104, y: 388))
        clothPath.addQuadCurve(to: CGPoint(x: 120, y: 388), controlPoint: CGPoint(x: 113, y: 387))
        clothPath.move(to: CGPoint(x: 222, y: 343))
        clothPath.addQuadCurve(to: CGPoint(x: 233, y: 427), controlPoint: CGPoint(x: 230, y: 384))
        clothPath.move(to: CGPoint(x: 222, y: 343))
        clothPath.addQuadCurve(to: CGPoint(x: 252, y: 402), controlPoint: CGPoint(x: 241, y: 366))
        clothPath.addLine(to: CGPoint(x: 231, y: 404))
        clothPath.move(to: CGPoint(x: 225, y: 363))
        clothPath.addQuadCurve(to: CGPoint(x: 235, y: 362), controlPoint: CGPoint(x: 230, y: 362))
        clothPath.move(to: CGPoint(x: 227, y: 376))
        clothPath.addQuadCurve(to: CGPoint(x: 241, y: 374), controlPoint: CGPoint(x: 234, y: 374))
        clothPath.move(to: CGPoint(x: 229, y: 389))
        clothPath.addQuadCurve(to: CGPoint(x: 248, y: 388), controlPoint: CGPoint(x: 238, y: 387))
        clothPath.move(to: CGPoint(x: 127, y: 363))
        clothPath.addQuadCurve(to: CGPoint(x: 157, y: 366), controlPoint: CGPoint(x: 143, y: 366))
        clothPath.move(to: CGPoint(x: 168, y: 366))
        clothPath.addQuadCurve(to: CGPoint(x: 225, y: 363), controlPoint: CGPoint(x: 194, y: 368))
        clothPath.move(to: CGPoint(x: 123, y: 379))
        clothPath.addQuadCurve(to: CGPoint(x: 150, y: 382), controlPoint: CGPoint(x: 136, y: 382))
        clothPath.move(to: CGPoint(x: 163, y: 382))
        clothPath.addQuadCurve(to: CGPoint(x: 227, y: 377), controlPoint: CGPoint(x: 193, y: 383))
        clothPath.move(to: CGPoint(x: 120, y: 393))
        clothPath.addQuadCurve(to: CGPoint(x: 139, y: 395), controlPoint: CGPoint(x: 129, y: 395))
        clothPath.move(to: CGPoint(x: 198, y: 397))
        clothPath.addQuadCurve(to: CGPoint(x: 229, y: 393), controlPoint: CGPoint(x: 214, y: 397))
        clothPath.move(to: CGPoint(x: 115, y: 410))
        clothPath.addQuadCurve(to: CGPoint(x: 149, y: 412), controlPoint: CGPoint(x: 146, y: 414))
        clothPath.move(to: CGPoint(x: 215, y: 412))
        clothPath.addQuadCurve(to: CGPoint(x: 231, y: 410), controlPoint: CGPoint(x: 223, y: 413))
        clothPath.move(to: CGPoint(x: 126, y: 428))
        clothPath.addCurve(to: CGPoint(x: 219, y: 430), controlPoint1: CGPoint(x: 154, y: 430), controlPoint2: CGPoint(x: 180, y: 426))
        let clothLayer = CAShapeLayer()
        clothLayer.path = clothPath.cgPath
        clothLayer.lineWidth = 2
        clothLayer.strokeColor = UIColor.black.cgColor
        clothLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(clothLayer)
        
        //皇冠
        let crownPath = UIBezierPath()
        crownPath.move(to: CGPoint(x: 157, y: 359))
        crownPath.addLine(to: CGPoint(x: 157, y: 369))
        crownPath.addLine(to: CGPoint(x: 167, y: 369))
        crownPath.addLine(to: CGPoint(x: 169, y: 370))
        crownPath.move(to: CGPoint(x: 167, y: 369))
        crownPath.addQuadCurve(to: CGPoint(x: 168, y: 362), controlPoint: CGPoint(x: 168, y: 366))
        crownPath.addLine(to: CGPoint(x: 164, y: 366))
        crownPath.addLine(to: CGPoint(x: 164, y: 361))
        crownPath.addLine(to: CGPoint(x: 160, y: 366))
        crownPath.addLine(to: CGPoint(x: 157, y: 359))
        let crownLayer = CAShapeLayer()
        crownLayer.path = crownPath.cgPath
        crownLayer.lineWidth = 0.8
        crownLayer.strokeColor = UIColor.black.cgColor
        crownLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(crownLayer)
        
        //鳥
        let birdPath = UIBezierPath()
        birdPath.move(to: CGPoint(x: 131, y: 409))
        birdPath.addQuadCurve(to: CGPoint(x: 148, y: 389), controlPoint: CGPoint(x: 129, y: 400))
        birdPath.addCurve(to: CGPoint(x: 170, y: 380), controlPoint1: CGPoint(x: 150, y: 370), controlPoint2: CGPoint(x: 169, y: 365))
        birdPath.addQuadCurve(to: CGPoint(x: 164, y: 387), controlPoint: CGPoint(x: 160, y: 372))
        birdPath.addCurve(to: CGPoint(x: 216, y: 413), controlPoint1: CGPoint(x: 175, y: 385), controlPoint2: CGPoint(x: 199, y: 392))
        birdPath.addQuadCurve(to: CGPoint(x: 160, y: 416), controlPoint: CGPoint(x: 150, y: 392))
        birdPath.addQuadCurve(to: CGPoint(x: 148, y: 418), controlPoint: CGPoint(x: 155, y: 418))
        birdPath.addQuadCurve(to: CGPoint(x: 149, y: 406), controlPoint: CGPoint(x: 150, y: 412))
        birdPath.addQuadCurve(to: CGPoint(x: 131, y: 408), controlPoint: CGPoint(x: 140, y: 406))
        birdPath.move(to: CGPoint(x: 161, y: 374))
        birdPath.addArc(withCenter: CGPoint(x: 161, y: 375), radius: 0.5, startAngle: 0.5, endAngle: 360, clockwise: true)
        let birdLayer = CAShapeLayer()
        birdLayer.path = birdPath.cgPath
        birdLayer.lineWidth = 1.4
        birdLayer.strokeColor = UIColor.black.cgColor
        birdLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(birdLayer)
        
        //字體
        let wordPath = UIBezierPath()
        wordPath.move(to: CGPoint(x: 165, y: 408))
        wordPath.addQuadCurve(to: CGPoint(x: 167, y: 424), controlPoint: CGPoint(x: 167, y: 416))
        wordPath.addQuadCurve(to: CGPoint(x: 172, y: 415), controlPoint: CGPoint(x: 179, y: 421))
        wordPath.addQuadCurve(to: CGPoint(x: 165, y: 408), controlPoint: CGPoint(x: 173, y: 406))
        wordPath.move(to: CGPoint(x: 165, y: 416))
        wordPath.addLine(to: CGPoint(x: 172, y: 415))
        wordPath.move(to: CGPoint(x: 176, y: 410))
        wordPath.addLine(to: CGPoint(x: 179, y: 411))
        wordPath.move(to: CGPoint(x: 177, y: 413))
        wordPath.addQuadCurve(to: CGPoint(x: 179, y: 423), controlPoint: CGPoint(x: 177, y: 418))
        wordPath.move(to: CGPoint(x: 182, y: 412))
        wordPath.addQuadCurve(to: CGPoint(x: 184, y: 423), controlPoint: CGPoint(x: 184, y: 418))
        wordPath.addQuadCurve(to: CGPoint(x: 190, y: 416), controlPoint: CGPoint(x: 185, y: 413))
        wordPath.move(to: CGPoint(x: 198, y: 416))
        wordPath.addQuadCurve(to: CGPoint(x: 191, y: 423),
            controlPoint: CGPoint(x: 190, y: 415))
        wordPath.addQuadCurve(to: CGPoint(x: 198, y: 419), controlPoint: CGPoint(x: 195, y: 426))
        wordPath.move(to: CGPoint(x: 198, y: 409))
        wordPath.addQuadCurve(to: CGPoint(x: 208, y: 422), controlPoint: CGPoint(x: 198, y: 433))
        let wordLayer = CAShapeLayer()
        wordLayer.path = wordPath.cgPath
        wordLayer.lineWidth = 1
        wordLayer.strokeColor = UIColor.black.cgColor
        wordLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(wordLayer)
        
       
        
        
        
        
         }
}

 
#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}
