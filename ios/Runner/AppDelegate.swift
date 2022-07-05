import UIKit
import Flutter
import GoogleMaps
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    GMSServices.provideAPIKey("AIzaSyCgAtgTb8Fw-hf7wtSprJeq9G01LqqRA14")
    GeneratedPluginRegistrant.register(with: self)
    if #available(iOS 10.0, *) { 
     UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
    }
   
 application.registerForRemoteNotifications()
 UIApplication.shared.beginReceivingRemoteControlEvents()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
var bgTask: UIBackgroundTaskIdentifier = UIBackgroundTaskIdentifier(rawValue: 0);
    override func applicationDidEnterBackground(_ application: UIApplication) {
                bgTask = application.beginBackgroundTask()
    }
    override func applicationDidBecomeActive(_ application: UIApplication) {
        application.endBackgroundTask(bgTask);
    }
}
