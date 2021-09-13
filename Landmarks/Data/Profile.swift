//
//  Profile.swift
//  Landmarks
//
//  Created by Антон Бобрышев on 13.09.2021.
//

import Foundation

struct Profile {
    var userName: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(userName: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌝"
        case autumn = "🍂"
        case winter = "⛄️"
        
        var id: String { self.rawValue }
    }
}
