import Foundation

// Old
//let oldUrl = NSURL(string: "http://www.washingtonpost.com")
//url?.URLByAppendingPathComponent("posttv")

// New
let newUrl = URL(string: "http://www.washingtonpost.com")
try newUrl?.appendingPathComponent("posttv")

/* --- */

// Old
//let oldQueue = dispatch_queue_create("label", DISPATCH_QUEUE_SERIAL)
//dispatch_async(oldQueue) {
//    // Do Something
//}

// New
let newQueue = DispatchQueue(label: "com.washingtonpost.asyncQueue")
newQueue.async {
    // Do Stuff
}
