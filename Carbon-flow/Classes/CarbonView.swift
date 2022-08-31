//
//  CarbonView.swift
//  Carbon-flow
//
//  Created by Endless Summer on 2020/12/7.
//

import Foundation

public struct Spacing: IdentifiableComponent, Hashable {
    public var height: CGFloat
    
    public init(_ height: CGFloat) {
        self.height = height
    }
    
    public func renderContent() -> UIView {
        UIView()
    }
    
    public func render(in content: UIView) {}

    public func referenceSize(in bounds: CGRect) -> CGSize? {
        CGSize(width: bounds.width, height: height)
    }
}
