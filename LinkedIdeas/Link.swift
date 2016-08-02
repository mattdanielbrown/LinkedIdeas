//
//  <.swift
//  LinkedIdeas
//
//  Created by Felipe Espinoza Castillo on 26/11/15.
//  Copyright © 2015 Felipe Espinoza Dev. All rights reserved.
//

import Cocoa

class Link: NSObject, NSCoding, Element, VisualElement {
  // own attributes
  var origin: Concept
  var target: Concept
  var originPoint: NSPoint { return origin.point }
  var targetPoint: NSPoint { return target.point }
  dynamic var color: NSColor
  
  // MARK: - VisualElement
  var isEditable: Bool = false
  var isSelected: Bool = false
  
  private let padding: CGFloat = 20
  
  static let defaultColor = NSColor.gray
  
  override var description: String {
    return "'\(origin.stringValue)' '\(target.stringValue)'"
  }
  
  // Element
  var identifier: String
  var rect: NSRect {
    var minX = min(originPoint.x, targetPoint.x)
    if (abs(originPoint.x - targetPoint.x) <= padding) { minX -= padding / 2 }
    var minY = min(originPoint.y, targetPoint.y)
    if (abs(originPoint.y - targetPoint.y) <= padding) { minY -= padding / 2 }
    let maxX = max(originPoint.x, targetPoint.x)
    let maxY = max(originPoint.y, targetPoint.y)
    let width = max(maxX - minX, padding)
    let height = max(maxY - minY, padding)
    return NSMakeRect(minX, minY, width, height)
  }
  
  init(origin: Concept, target: Concept) {
    self.origin = origin
    self.target = target
    self.identifier = "\(UUID().uuidString)-link"
    self.color = Link.defaultColor
  }
  
  static let colorPath = "color"
  
  let identifierKey = "identifierKey"
  let originKey = "OriginKey"
  let targetKey = "TargetKey"
  let colorKey = "colorKey"
  
  required init?(coder aDecoder: NSCoder) {
    identifier = aDecoder.decodeObject(forKey: identifierKey) as! String
    origin = aDecoder.decodeObject(forKey: originKey) as! Concept
    target = aDecoder.decodeObject(forKey: targetKey) as! Concept
    
    if let color = aDecoder.decodeObject(forKey: colorKey) as? NSColor {
      self.color = color
    } else {
      self.color = Link.defaultColor
    }
  }
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(identifier, forKey: identifierKey)
    aCoder.encode(origin, forKey: originKey)
    aCoder.encode(target, forKey: targetKey)
    aCoder.encode(color, forKey: colorKey)
  }
}
