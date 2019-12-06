import Cocoa

class ViewController: NSViewController {

  @objc dynamic var bar: Int {
    get {
      if let document = self.view.window?.windowController?.document as? Document {
        return document.countDown
      }
      return 0
    }
    set(new) {
      if let document = self.view.window?.windowController?.document as? Document {
        document.countDown = new
      }
    }
  }

  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
 
}
