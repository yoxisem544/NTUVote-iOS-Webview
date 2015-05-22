//
//  ViewController.swift
//  FullScreenWeb
//
//  Created by David on 2015/5/22.
//  Copyright (c) 2015年 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    var web: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        web = UIWebView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        
//        web.autoresizesSubviews = true
        web.scrollView.bounces = false
//        web.scalesPageToFit = true

        
        web.delegate = self
    
        
        
        self.view.addSubview(web)
    }
    
    override func viewDidAppear(animated: Bool) {
        var urlrequest = NSURLRequest(URL: NSURL(string: "https://github.com/Neson/NTUvote-UI/")!)
//        urlrequest = NSURLRequest(URL: NSURL(string: "https://google.com")!)
        web.loadRequest(urlrequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        println("error \(error)")
    }

}

