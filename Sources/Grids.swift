//
//  Grids.swift
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


#if os(macOS)
    import AppKit
    public typealias View = NSView
#else
    import UIKit
    #if !os(watchOS)
    public typealias View = UIView
    #endif
#endif

public final class Grids<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

/**
 A type that has Grids extensions.
 */
public protocol GridsCompatible {
    associatedtype CompatibleType
    var grids: CompatibleType { get }
}

public extension GridsCompatible {
    public var grids: Grids<Self> {
        get { return Grids(self) }
    }
}

#if !os(watchOS)
extension View: GridsCompatible { }
#endif
