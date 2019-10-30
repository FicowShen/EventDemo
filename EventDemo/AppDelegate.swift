import UIKit

//@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
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

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = MyWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .red
        printExecutionInfo()
        window.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        self.window = window
        printExecutionInfo()
        self.window?.makeKeyAndVisible()
        printExecutionInfo()
        
        return true
    }
}

