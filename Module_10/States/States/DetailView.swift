//
//  DetailView.swift
//  States
//
//  Created by Andrew Kim on 3/22/24.
//

import SwiftUI

struct DetailView: View {
    var state: USState
    init(state: USState) {
        self.state = state
    }
    var body: some View {
        // Display all available info about the state
        VStack {
            Text(state.name)
                .font(.system(size: 24))
                .bold()
                .padding(.bottom, 10)
            Text("Rank: \(state.rank)")
                .font(.system(size: 18))
                .padding(.bottom, 5)
            Text("Population: \(state.pop)")
                .font(.system(size: 18))
                .padding(.bottom, 5)
            Text("2018 Population: \(state.pop2018)")
                .font(.system(size: 18))
                .padding(.bottom, 5)
            Text("2010 Population: \(state.pop2010)")
                .font(.system(size: 18))
                .padding(.bottom, 5)
            Text("Density: \(state.density)")
                .font(.system(size: 18))
                .padding(.bottom, 5)
        }
    }
}

#Preview {
    DetailView(state: USStates.list[0])
}
