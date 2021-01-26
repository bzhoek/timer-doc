import Cocoa

class Window: NSWindow {
  @objc dynamic var foo = 0
}

class TimerPanel: NSPanel {
  @objc dynamic var countDown = 0
}
