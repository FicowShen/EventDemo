import UIKit

// https://stackoverflow.com/questions/24020000/subclass-uiapplication-with-swift
printExecutionInfo()
UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    NSStringFromClass(MyApplication.self),
    NSStringFromClass(AppDelegate.self)
)
printExecutionInfo()

