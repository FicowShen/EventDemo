import UIKit

class MyApplication: UIApplication {
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
    
    override func sendEvent(_ event: UIEvent) {
        printExecutionInfo("<<")
        super.sendEvent(event)
        printExecutionInfo(">>")
        print("Event sent:\(event)")
    }
    
    override func sendAction(_ action: Selector, to target: Any?, from sender: Any?, for event: UIEvent?) -> Bool {
        printExecutionInfo("<<")
        let isHandled = super.sendAction(action, to: target, from: sender, for: event)
        printExecutionInfo(">>")
        return isHandled
    }
    
}
