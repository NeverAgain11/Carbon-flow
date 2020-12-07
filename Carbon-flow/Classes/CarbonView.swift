//
//  CarbonView.swift
//  Carbon-flow
//
//  Created by Endless Summer on 2020/12/7.
//

import Foundation
import AsyncDisplayKit

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

final class NodeView<T: ASDisplayNode>: UIView {
    let node: T
    init(node: T) {
        self.node = node
        
        super.init(frame: .zero)
        
        addSubnode(node)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        node.frame = bounds
    }
    
}
