//
//  Profile.swift
//  SwiftUITest (iOS)
//
//  Created by TAEHYUNG CHOI on 14/01/2021.
//

import Foundation

struct Profile {
    var username: String
    var perfersNotifications = true
    var seasonalPhoto  = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season : String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { self.rawValue}
    }
    
    
}
