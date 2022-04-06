import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
    }
    if(!UserDefaults.standard.bool(forKey: "Notification")) {
        UIApplication.shared.cancelAllLocalNotifications()
        UserDefaults.standard.set(true, forKey: "Notification")
    }
  GMSServices.provideAPIKey("AIzaSyC-S_6PmqPkf3DZ3XvPQeRtwuNLfKerQp0")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
