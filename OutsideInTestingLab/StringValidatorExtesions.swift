//
//  StringValidatorExtesions.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//

import Foundation

let VALID_EMAIL_PATTERN = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"

extension String {
    var isEmail: Bool {
        let regex = try? NSRegularExpression(pattern: VALID_EMAIL_PATTERN, options: .CaseInsensitive)
        let selfRange = NSMakeRange(0, characters.count)
        let options = NSMatchingOptions()
        
        return regex?.firstMatchInString(self, options: options, range: selfRange) != nil
    }
}