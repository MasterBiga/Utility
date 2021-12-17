import Flutter
import UIKit

public class SwiftUtilityPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "utility", binaryMessenger: registrar.messenger())
    let instance = SwiftUtilityPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
      if call.method == "launchUrl" {
          if let args = call.arguments as? [String] {
              UrlLauncher.launchUrl(url: args[0])
          }
      }
  }
}
