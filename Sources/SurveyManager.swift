//
//  SurveyManager.swift
//  
//
//  Created by akshaygupta on 27/06/24.
//

import Foundation
import UIKit

class SurveyManager{
    public static let shared = SurveyManager()
    
    private init() {}
    
    public func performSurvey(withToken token: String, contactInfo: [String: Any], metadata: [String: Any], from viewController: UIViewController){
        // call the required api
        
        DispatchQueue.main.async {
            self.presentWebView(withLink: "www.ggogle.com", from: viewController)
        }
    }
    
    private func presentWebView(withLink link: String, from viewController: UIViewController) {
        guard let url = URL(string: link) else { return }
        
        let webViewController = WebViewController()
        webViewController.url = url
        
        let navController = UINavigationController(rootViewController: webViewController)
        navController.modalPresentationStyle = .pageSheet
        
        viewController.present(navController, animated: true, completion: nil)
    }
}


class WebViewController: UIViewController {
    
    var url: URL?
    private var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = UIWebView(frame: self.view.bounds)
        self.view.addSubview(webView)
        
        if let url = url {
            webView.loadRequest(URLRequest(url: url))
        }
    }
}
