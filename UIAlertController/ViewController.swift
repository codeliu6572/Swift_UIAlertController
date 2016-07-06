//
//  ViewController.swift
//  UIAlertController
//
//  Created by 刘浩浩 on 16/7/6.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let alertBtn = UIButton(type: .System)
        alertBtn.frame = CGRectMake(10, 120, 300, 60)
        alertBtn.setTitle("AlertView", forState: .Normal)
        alertBtn.layer.borderWidth = 1
        alertBtn.layer.cornerRadius=5;
        alertBtn.layer.borderColor = UIColor.blackColor().CGColor
        alertBtn.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        alertBtn.addTarget(self, action: #selector(self.AlertView), forControlEvents: .TouchUpInside)
        self.view.addSubview(alertBtn)
        
        let actionSheet = UIButton(type: .System)
        actionSheet.frame = CGRectMake(10, 210, 300, 60)
        actionSheet.setTitle("ActionSheet", forState: .Normal)
        actionSheet.layer.borderWidth = 1
        actionSheet.layer.cornerRadius=5;
        actionSheet.layer.borderColor = UIColor.blackColor().CGColor
        actionSheet.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        actionSheet.addTarget(self, action: #selector(self.ActionSheet), forControlEvents: .TouchUpInside)
        self.view.addSubview(actionSheet)
        
        let alertFieldBtn = UIButton(type: .System)
        alertFieldBtn.frame = CGRectMake(10, 300, 300, 60)
        alertFieldBtn.setTitle("AlertFieldView", forState: .Normal)
        alertFieldBtn.layer.borderWidth = 1
        alertFieldBtn.layer.cornerRadius=5;
        alertFieldBtn.layer.borderColor = UIColor.blackColor().CGColor
        alertFieldBtn.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        alertFieldBtn.addTarget(self, action: #selector(self.AlertField), forControlEvents: .TouchUpInside)
        self.view.addSubview(alertFieldBtn)

    }
    func AlertView() {
        let alertVC = UIAlertController(title: " 警告", message: "这是一个UIAlertController做的UIAlertView", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (action: UIAlertAction) -> Void in
            /**
             写取消后操作
             */
        })
        let okAction = UIAlertAction(title: "Ok", style: .Default, handler: {
            (action: UIAlertAction) -> Void in
            /**
             写确定后操作
             */
        })
        alertVC.addAction(cancelAction)
        alertVC.addAction(okAction)
        self.presentViewController(alertVC, animated: true, completion: nil)
    }
    func ActionSheet() {
        let alertVC = UIAlertController(title: " 警告", message: "这是一个UIAlertController做的UIAlertView", preferredStyle: .ActionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (action: UIAlertAction) -> Void in
            /**
             写取消后操作
             */
        })
        let okAction1 = UIAlertAction(title: "Ok1", style: .Default, handler: {
            (action: UIAlertAction) -> Void in
            /**
             写Ok1后操作
             */
        })
        let okAction2 = UIAlertAction(title: "Ok2", style: .Default, handler: {
            (action: UIAlertAction) -> Void in
            /**
             写Ok1后操作
             */
        })
        alertVC.addAction(cancelAction)
        alertVC.addAction(okAction1)
        alertVC.addAction(okAction2)
        self.presentViewController(alertVC, animated: true, completion: nil)
    }
    func AlertField() {
        
        let alertVC = UIAlertController(title: " 登陆", message: nil, preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (action: UIAlertAction) -> Void in
            /**
             写取消后操作
             */
        })
        let okAction = UIAlertAction(title: "Ok", style: .Default, handler: {
            (action: UIAlertAction) -> Void in
            /**
             写确定后操作
             */
        })
        
        alertVC.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
            textField.placeholder = "登录"
        }
        alertVC.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
            textField.placeholder = "密码"
            textField.secureTextEntry = true
        }
        alertVC.addAction(cancelAction)
        alertVC.addAction(okAction)
        
        //要么要写在addTextFieldWithConfigurationHandler后面要么写在cancel或者ok的block里面，否则系统崩溃
        let loginField = (alertVC.textFields?.first)! as UITextField
        let passField = (alertVC.textFields?.last)! as UITextField

        
  


        
        
        self.presentViewController(alertVC, animated: true, completion: nil)
        
      
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
    