import Cocoa

class WindowController: NSWindowController {
  
  @objc dynamic var bar: Int {
    get {
      if let document = self.document as? Document {
        return document.countDown
      }
      return 0
    }
    set(new) {
      if let document = self.document as? Document {
        document.countDown = new
      }
    }
  }

}
