//
//  ContentView.swift
//  SportsEventInfo
//
//  Created by Andrew Kim on 2/23/24.
//

import SwiftUI

struct SportsEventInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            (Text("Matchup:").italic() + Text(" Tennesse vs Missouri"))
                .frame(maxWidth: .infinity, alignment: .leading)
            (Text("When:").italic() + Text(" October 2, 2021 at 11:30:00 AM"))
                .frame(maxWidth: .infinity, alignment: .leading)
            Image("TNvsMO_Oct2_2022")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("TNvsMO_GameLeaders")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }.padding()
    }
}

#Preview {
    SportsEventInfoView()
}
