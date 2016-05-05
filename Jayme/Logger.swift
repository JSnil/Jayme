// Jayme
// Logger.swift
//
// Copyright (c) 2016 Inaka - http://inaka.net/
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

/// Class for managing internal logging
public class Logger {
    
    /// Singleton shared instance
    static let sharedLogger = Logger()
    
    /// Switch for enabling or disabling Jayme's logs
    public var enableLogs = true
    
    // TODO: Pluck out native `print` from `log` function and give the user the ability to inject his own logging function
    
    // MARK: - Private
    
    internal var requestCounter = 0
    internal func log(message: String) {
        if self.enableLogs {
            print(message)
        }
    }
    
}
