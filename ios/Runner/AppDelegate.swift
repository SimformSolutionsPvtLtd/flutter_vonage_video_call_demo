import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        let batteryChannel = FlutterMethodChannel(name: "vonage",
                                                  binaryMessenger: controller.binaryMessenger)
        batteryChannel.setMethodCallHandler({
            [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
          // Note: this method is invoked on the UI thread.
            guard call.method == "initVonageVideoCall" else {
                result(FlutterMethodNotImplemented)
                return
              }
            self?.initVonageVideoCall(result: result,
                                     call: call)
        })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func initVonageVideoCall(result: FlutterResult, call : FlutterMethodCall) {
        if let arguments = call.arguments as? [String: String]{
            let vVonageVideoCallController = VonageVideoCallController()
            vVonageVideoCallController.kSessionId = arguments["SESSION"] ?? ""
            vVonageVideoCallController.kToken = arguments["TOKEN"] ?? ""
            vVonageVideoCallController.kApiKey = arguments["API_KEY"] ?? ""
            window.rootViewController = vVonageVideoCallController
            
        }
    
    }
}
