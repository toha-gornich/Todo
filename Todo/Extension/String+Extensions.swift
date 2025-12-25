//
//  String+Extensions.swift
//  Todo
//
//  Created by Горніч Антон on 25.12.2025.
//

import Foundation


extension String{
    
    /// Checks if the string is empty or contains only whitespace and newline characters
    /// - Returns: `true` if the string is empty or contains only whitespace/newlines, `false` otherwise
    /// - Example:
    ///   - `"   ".isEmptyOrWhiteSpace` returns `true`
    ///   - `"Hello".isEmptyOrWhiteSpace` returns `false`
    ///   - `"".isEmptyOrWhiteSpace` returns `true`
    ///   - `"\n\t  ".isEmptyOrWhiteSpace` returns `true`
    ///
    var isEmptyOrWhitespace: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
