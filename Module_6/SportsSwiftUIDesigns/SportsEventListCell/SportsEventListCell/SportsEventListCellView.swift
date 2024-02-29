//
//  ContentView.swift
//  SportsEventListCell
//
//  Created by Andrew Kim on 2/23/24.
//

import SwiftUI

struct SportsEventListCellView: View {
    var body: some View {
        HStack {
            Image("football")
            VStack(alignment: .leading, spacing: 10) {
                Text("Tennessee vs Missouri")
                Text("Oct 2, 2021 at 11:30 AM")
            }
            .padding()
        }
    }
}

#Preview {
    SportsEventListCellView()
}
