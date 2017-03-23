//
//  View+Grids.swift
//  Grids
//
//  Created by Leo on 15/03/2017.
//
//  Copyright (c) 2017 Leo <leodaxia@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.


import SnapKit

#if os(macOS)
    import AppKit
#else
    import UIKit
#endif

extension Grids where Base: View {
    
    /**
     Arrange the subviews equidistantly in the horizontal direction
     
     - parameter subviews: The subviews you want to arrange
     
     - note: `subviews` can not be empty
     */
    public func horizontal(subviews: [View]) {
        guard subviews.count > 0 else { return }
        
        var paddings: [View] = []
        
        for _ in 0...subviews.count {
            let view = View()
            paddings.append(view)
            (self.base as View).addSubview(view)
            view.snp.makeConstraints({ (make) in
                make.centerY.equalTo(subviews[0].snp.centerY)
                make.height.equalTo(subviews[0].snp.height)
            })
        }
        
        paddings[0].snp.makeConstraints { (make) in
            make.left.equalToSuperview()
        }
        
        var lastPadding = paddings[0]
        for i in 0..<subviews.count {
            let subview = subviews[i]
            let padding = paddings[i + 1]
            subview.snp.makeConstraints({ (make) in
                make.left.equalTo(lastPadding.snp.right)
            })
            padding.snp.makeConstraints({ (make) in
                make.left.equalTo(subview.snp.right)
                make.width.equalTo(paddings[0].snp.width)
            })
            
            lastPadding = padding
        }
        
        lastPadding.snp.makeConstraints { (make) in
            make.right.equalToSuperview()
        }
    }
    
    /**
     Arrange the subviews equidistantly in the vertical direction
     
     - parameter subviews: The subviews you want to arrange
     
     - note: `subviews` can not be empty
     */
    public func vertical(subviews: [View]) {
        guard subviews.count > 0 else { return }
        
        var paddings: [View] = []
        
        for _ in 0...subviews.count {
            let view = View()
            paddings.append(view)
            (self.base as View).addSubview(view)
            view.snp.makeConstraints({ (make) in
                make.centerX.equalTo(subviews[0].snp.centerX)
                make.width.equalTo(subviews[0].snp.width)
            })
        }
        
        paddings[0].snp.makeConstraints { (make) in
            make.top.equalToSuperview()
        }
        
        var lastPadding = paddings[0]
        for i in 0..<subviews.count {
            let subview = subviews[i]
            let padding = paddings[i + 1]
            subview.snp.makeConstraints({ (make) in
                make.top.equalTo(lastPadding.snp.bottom)
            })
            padding.snp.makeConstraints({ (make) in
                make.top.equalTo(subview.snp.bottom)
                make.height.equalTo(paddings[0].snp.height)
            })
            
            lastPadding = padding
        }
        
        lastPadding.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview()
        }
    }
}
