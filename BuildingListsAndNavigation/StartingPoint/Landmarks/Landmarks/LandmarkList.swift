//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Mohit on 21/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavouritesOnly, label: {
                    Text("Favourites Only")
                })
                
                ForEach(userData.landmarks) { landmark in
                    if !userData.showFavouritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone 11 Pro Max"], id: \.self) { device in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
   
    }
}
