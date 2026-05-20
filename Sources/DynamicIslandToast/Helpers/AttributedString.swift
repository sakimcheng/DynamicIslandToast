//
//  AttributedString.swift
//  
//
//  Created by Kimcheng Sa on 20/5/26.
//

extension NSAttributedString {
  static func getHeight(withConstrainedWidth width: CGFloat) -> CGFloat {
    let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
    let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)

    return ceil(boundingBox.height)
  }
}
