import UIKit
import Flutter
import UserNotifications


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            
            if granted {
                print("Notification permission granted")
            } else {
                print("Notification permission denied")
            }
        }
        
        if let controller = window?.rootViewController as? FlutterViewController {
            let channel = FlutterMethodChannel(
                name: "your_channel",
                binaryMessenger: controller.binaryMessenger
            )
            
            channel.setMethodCallHandler { [weak self] (call, result) in
                if call.method == "showNotification" {
                    if let arguments = call.arguments as? [String: Any],
                       let title = arguments["title"] as? String,
                       let content = arguments["content"] as? String {
                        self?.showNotification(title: title, content: content)
                        result(nil)
                    } else {
                        result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments", details: nil))
                    }
                } else {
                    result(FlutterMethodNotImplemented)
                }
            }
        }

        func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            completionHandler([.alert, .badge, .sound])
        }

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func showNotification(title: String, content: String) {
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if granted {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            } else {
                print("Permission for push notifications denied.")
            }
        };
        
        let center = UNUserNotificationCenter.current()
        
        let uuidString = UUID().uuidString
    
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = title
        notificationContent.body = content
        notificationContent.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        
        let request = UNNotificationRequest(identifier: uuidString, content: notificationContent, trigger: trigger)
        
        center.add(request)
        
            }
        }
