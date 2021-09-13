//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Антон Бобрышев on 13.09.2021.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("UserName").bold()
                Divider()
                TextField("Username", text: $profile.userName)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
                    .bold()
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Season Photo")
                    .bold()
            
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
