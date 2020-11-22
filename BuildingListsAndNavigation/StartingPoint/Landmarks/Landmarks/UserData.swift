//
//  UserData.swift
//  Landmarks
//
//  Created by Mohit on 21/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavouritesOnly: Bool = false
    @Published var landmarks: [Landmark] = landmarkData
}
