import Cocoa

class CountDownViewController: NSViewController {
  @IBOutlet weak var label: NSTextField!
  
  override func viewDidAppear() {
    let formatter = DateFormatter()
    formatter.dateFormat = "h:mm:ss"
    
    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
      self.label.stringValue = formatter.string(from: Date())
    }
  }
  
}
