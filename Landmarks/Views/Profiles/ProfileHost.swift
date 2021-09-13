//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Антон Бобрышев on 13.09.2021.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editModel
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editModel?.wrappedValue == .active {
                    Button("Cancel") {
                        draftProfile = modelData.profile
                        editModel?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            if editModel?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
