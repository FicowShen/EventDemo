import UIKit

class BackgroundView: UIView {
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
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        printExecutionInfo("<<")
        let isPointInside = super.point(inside: point, with: event)
        printExecutionInfo(">>")
        return isPointInside
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        printExecutionInfo("<<")
        let view = super.hitTest(point, with: event)
        printExecutionInfo(">>")
        return view
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        printExecutionInfo("<<")
//        super.touchesBegan(touches, with: event)
        printExecutionInfo(">>")
    }
}
