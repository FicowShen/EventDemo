import Foundation

func printExecutionInfo(_ message: String? = nil, file: String = #file,
                        functionName: String = #function,
                        lineNumber: Int = #line) {
    let fileName = (file as NSString).lastPathComponent
    var additionalMessage = ""
    if let message = message {
        additionalMessage = " \(message)"
    }
    print("---", fileName, "\n",
          functionName, "#" + lineNumber.description + additionalMessage)
}
