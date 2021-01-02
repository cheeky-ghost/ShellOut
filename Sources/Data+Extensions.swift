//
//  Data+Extensions.swift
//  
//
//  Created by Michael O'Brien on 2/1/21.
//

import Foundation

 extension Data {
     func shellOutput() -> String {
         guard let output = String(data: self, encoding: .utf8) else {
             return ""
         }

         guard !output.hasSuffix("\n") else {
             let endIndex = output.index(before: output.endIndex)
             return String(output[..<endIndex])
         }

         return output

     }
 }
