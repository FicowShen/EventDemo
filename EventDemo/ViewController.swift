import UIKit

class ViewController: UIViewController {
    
    #if SHOW_RESPONDER_INFO
        override var next: UIResponder? {
            printExecutionInfo("<<")
            let next = super.next
            printExecutionInfo(">>")
            return next
        }
        
        override var canBecomeFirstResponder: Bool {
            printExecutionInfo("<<")
            let canBecomeFirstResponder = super.canBecomeFirstResponder
            printExecutionInfo(">>")
            return canBecomeFirstResponder
        }
    #endif
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        printExecutionInfo("<<")
        super.touchesBegan(touches, with: event)
        printExecutionInfo(">>")
    }
}

