//
//  ThemeData.swift
//  Eat-it
//
//  Created by sungnni on 2018. 6. 13..
//  Copyright © 2018년 sungeun. All rights reserved.
//

import Foundation
import UIKit

struct ColorSet {
  
  var id: Int!
  var name: String!
  
  var good: UIColor!
  var soso: UIColor!
  var bad: UIColor!
  var background: UIColor!
  
  var colors: [UIColor] = []
  
  init(id: Int, name: String, colors: [String]) {
    
    self.id = id
    self.name = name
    
    for color in colors {
      let colorTemp = UIColor(hex: color)
      self.colors.append(colorTemp)
    }
    
    self.good = self.colors[0]
    self.soso = self.colors[1]
    self.bad = self.colors[2]
    self.background = self.colors[3]
  }
  
  
  static var basic = ColorSet(id: 0, name: "basic", colors: ["73cac4", "e3e546", "f2788f", "f5f5f5"])
  static var helsinki = ColorSet(id: 1, name: "helsinki", colors: ["abc5e8", "fbf7ae", "fad2da", "f5f5f5"])
  static var marseille = ColorSet(id: 2, name: "marseille", colors: ["8cdbd6", "fff9a4", "f9b8bc", "f5f5f5"])
  static var newyork = ColorSet(id: 3, name: "newyork", colors: ["1dace6", "ffd938", "90909a", "f5f5f5"])
  static var horizon = ColorSet(id: 4, name: "horizon", colors: ["fdd8dd", "eebbcc", "d7c4e0", "fff7f5"])
  static var orange = ColorSet(id: 5, name: "orange", colors: ["ffaa39", "ffcd68", "fff1c4", "fff8eb"])
  static var heaven = ColorSet(id: 6, name: "heaven", colors: ["b6e2e6", "9ddae3", "93cad6", "f5f5f5"])
  
}