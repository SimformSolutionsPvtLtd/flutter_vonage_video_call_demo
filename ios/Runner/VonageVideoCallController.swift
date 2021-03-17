//
//  ViewController.swift
//  Runner
//
//  Created by Meet Janani on 08/03/21.
//

import UIKit
import OpenTok




class VonageVideoCallController: UIViewController {

    // Replace with your OpenTok API key
    var kApiKey = ""
    // Replace with your generated session ID
    var kSessionId = ""
    // Replace with your generated token
    var kToken = ""
    
//    ViewController(kApiKey: String, kSessionId: String, kToken: String){
//
//    }
    
    var session: OTSession?
    var publisher: OTPublisher?
    var subscriber: OTSubscriber?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        connectToAnOpenTokSession()
    }
    
    func connectToAnOpenTokSession() {
        session = OTSession(apiKey: kApiKey, sessionId: kSessionId, delegate: self)
        var error: OTError?
        session?.connect(withToken: kToken, error: &error)
        if error != nil {
            print(error!)
        }
    }
    
    

}

// MARK: - OTSessionDelegate callbacks
extension VonageVideoCallController: OTSessionDelegate {
   func sessionDidConnect(_ session: OTSession) {
       print("The client connected to the OpenTok session.")
    
    let settings = OTPublisherSettings()
        settings.name = UIDevice.current.name
        guard let publisher = OTPublisher(delegate: self, settings: settings) else {
            return
        }

        var error: OTError?
        session.publish(publisher, error: &error)
        guard error == nil else {
            print(error!)
            return
        }

        guard let publisherView = publisher.view else {
            return
        }
        let screenBounds = UIScreen.main.bounds
        publisherView.frame = CGRect(x: screenBounds.width - 150 - 20, y: screenBounds.height - 150 - 20, width: 150, height: 150)
        view.addSubview(publisherView)
   }

   func sessionDidDisconnect(_ session: OTSession) {
       print("The client disconnected from the OpenTok session.")
   }

   func session(_ session: OTSession, didFailWithError error: OTError) {
       print("The client failed to connect to the OpenTok session: \(error).")
   }

   func session(_ session: OTSession, streamCreated stream: OTStream) {
       print("A stream was created in the session.")
    
    subscriber = OTSubscriber(stream: stream, delegate: self)
        guard let subscriber = subscriber else {
            return
        }

        var error: OTError?
        session.subscribe(subscriber, error: &error)
        guard error == nil else {
            print(error!)
            return
        }

        guard let subscriberView = subscriber.view else {
            return
        }
        subscriberView.frame = UIScreen.main.bounds
        view.insertSubview(subscriberView, at: 0)
   }

   func session(_ session: OTSession, streamDestroyed stream: OTStream) {
       print("A stream was destroyed in the session.")
   }
}


// MARK: - OTPublisherDelegate callbacks
extension VonageVideoCallController: OTPublisherDelegate {
   func publisher(_ publisher: OTPublisherKit, didFailWithError error: OTError) {
       print("The publisher failed: \(error)")
   }
}


// MARK: - OTSubscriberDelegate callbacks
extension VonageVideoCallController: OTSubscriberDelegate {
   public func subscriberDidConnect(toStream subscriber: OTSubscriberKit) {
       print("The subscriber did connect to the stream.")
   }

   public func subscriber(_ subscriber: OTSubscriberKit, didFailWithError error: OTError) {
       print("The subscriber failed to connect to the stream.")
   }
}
