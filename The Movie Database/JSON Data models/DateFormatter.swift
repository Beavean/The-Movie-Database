//
//  DateFormatter.swift
//  The Movie Database
//
//  Created by Beavean on 23.07.2022.
//

import UIKit

struct MediaDateFormatter {
    
    static let shared = MediaDateFormatter()
    
    private init() { }
    
    func formatDate(from string: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en-US")
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: string)
        dateFormatter.dateFormat = "dd MMMM yyyy"
        let resultString = dateFormatter.string(from: date!)
        return resultString
    }
}
