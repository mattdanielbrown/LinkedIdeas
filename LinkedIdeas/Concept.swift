//
//  Concept.swift
//  LinkedIdeas
//
//  Created by Felipe Espinoza Castillo on 08/11/15.
//  Copyright © 2015 Felipe Espinoza Dev. All rights reserved.
//

import Foundation

class Concept: NSObject, NSCoding {
  static let placeholderString = "Insert Concept"
  
  var stringValue: String = Concept.placeholderString
  var point: NSPoint
  var added: Bool = false
  var editing: Bool = false
  var identifier: Int
  var rect: NSRect {
    let offset: CGFloat = 20.0
    let size = stringValue.sizeWithAttributes(nil)
    let x = self.point.x - size.width / 2.0 - offset
    let y = self.point.y - size.height / 2.0 - offset
    let point = NSPoint(x: x, y: y)
    let bigSize = NSSize(width: size.width + offset, height: size.height + offset)
    return NSRect(origin: point, size: bigSize)
  }
  
  init(point: NSPoint) {
    self.point = point
    self.identifier = random()
  }
  
  let stringValueKey = "stringValueKey"
  let pointKey = "pointKey"
  let identifierKey = "identifierKey"
  let editingKey = "editingKey"
  
  required init?(coder aDecoder: NSCoder) {
    point = aDecoder.decodePointForKey(pointKey)
    identifier = aDecoder.decodeIntegerForKey(identifierKey)
    editing = aDecoder.decodeBoolForKey(editingKey)
    print("concept editing=\(editing)")
    let string = aDecoder.decodeObjectForKey(stringValueKey) as? String
    if let string = string {
      stringValue = string
    }
  }
  
  override var description: String {
    get {
      return "[\(identifier)] '\(stringValue)' \(editing) \(point)"
    }
  }
  
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodePoint(point, forKey: pointKey)
    aCoder.encodeObject(stringValue, forKey: stringValueKey)
    aCoder.encodeInteger(identifier, forKey: identifierKey)
    aCoder.encodeBool(editing, forKey: editingKey)
  }
  
  func draw() {
    stringValue.drawAtPoint(rect.origin, withAttributes: nil)
  }
  
}