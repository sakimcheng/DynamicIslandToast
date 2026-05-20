//
//  UIApplication+Extensions.swift
//  
//
//  Created by Kimcheng Sa on 20/5/26.
//

import UIKit

extension UIApplication {
  var currentWindow: UIWindow? {
    connectedScenes
      .compactMap { $0 as? UIWindowScene }
      .filter { $0.activationState == .foregroundActive || $0.activationState == .foregroundInactive }
      .flatMap(\.windows)
      .first(where: \.isKeyWindow)
  }
}
