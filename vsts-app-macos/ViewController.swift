//
//  ViewController.swift
//  vsts-app-macos
//
//  Created by Zlatan on 09/12/2018.
//  Copyright © 2018 Zlatan. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {
  
  var webView: WKWebView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.setupUI()
    self.setupWebView()
  }
  
  override func loadView() {
    let webConfiguration = WKWebViewConfiguration()
    self.webView = WKWebView(frame: .zero, configuration: webConfiguration)
    self.webView.uiDelegate = self
    self.view = self.webView
  }
  
  private func setupWebView() {
    let url =  URL(string: "https://enab.visualstudio.com")
    let request = URLRequest(url: url!)
    self.webView.load(request)
    self.view = self.webView
  }
  
  private func setupUI() {
    self.preferredContentSize = CGSize(width: 1200, height: 800)
  }

}

