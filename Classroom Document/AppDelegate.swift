import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    showCapturePanel()
  }

  private func showCapturePanel() {
    let storyboard = NSStoryboard(name: "Main", bundle: nil)
    let controller: NSWindowController = storyboard.instantiateController(withIdentifier: "screenShotPanel") as! NSWindowController
    controller.window?.level = .popUpMenu
    controller.showWindow(nil)
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

}

