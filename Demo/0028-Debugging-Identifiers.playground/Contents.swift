import Foundation

/**
 SE-0028
 
 Modernizes Debugging Identifiers
 
 Code adapted from https://github.com/ArtSabintsev/Magic/blob/master/Magic.swift
 */

func magic<T>(object: T, _ file: String = #file, _ function: String = #function, _ line: Int = #line)
{
    let fileString = file as NSString
    let fileLastPathComponent = fileString.lastPathComponent as NSString
    let filename = fileLastPathComponent.deletingPathExtension
    print("\(filename).\(function)[\(line)]: \(object)\n", terminator: "")
}

magic(object: "Testing")
