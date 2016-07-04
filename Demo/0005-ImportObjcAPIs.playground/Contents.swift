import Foundation

/**
 SE-0005
 
 https://github.com/apple/swift-evolution/blob/master/proposals/0005-objective-c-name-translation.md
 */

let objcString: NSString = "Long Live Objective-C"

// Not Prefered
//let trimmedString = objcString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())

// Prefered
let sanitizedString = objcString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines())
