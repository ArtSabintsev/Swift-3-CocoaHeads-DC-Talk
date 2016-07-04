import Foundation

/** 
 SE-0008

 The ability to use lazy instantiation with a flatMap of optionals
 
 // From the docs
 Use the lazy property when chaining operations to prevent intermediate operations from
 allocating storage, or when you only need a part of the final collection to avoid unnecessary
 computation.

 */
(1...10).lazy.flatMap { n in n % 2 == 0 ? n/2 : nil }