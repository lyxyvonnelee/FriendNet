//
//  Contacts.swift
//  FriendNet
//
//  Created by Yvonne Lee on 9/30/23.
//

import Foundation

struct Contact: Identifiable {
    var id: Int
    var name: String
    var phoneNumber: String
    var email: String?
    var address: String?
    var birthday: Date?
}

