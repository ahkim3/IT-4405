//
//  ContentView.swift
//  AppleiPhoneChoose
//
//  Created by Andrew Kim on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                // Header
                VStack{
                    Text("From $999 or $41.62/mo. before trade-in*")
                }

                VStack() {
                    // Choose your finish
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Choose your finish.").font(.title2).bold()
                        }
                        HStack {
                            FinishItemView(color: Color(.sRGB, red: 0.694, green: 0.776, blue: 0.851, opacity: 1.0), labelString: "Sierra Blue")
                            FinishItemView(color: Color(.sRGB, red: 0.953, green: 0.957, blue: 0.941, opacity: 1.0), labelString: "Silver")
                        }
                        HStack {
                            FinishItemView(color: Color(.sRGB, red: 0.969, green: 0.925, blue: 0.843, opacity: 1.0), labelString: "Gold")
                            FinishItemView(color: Color(.sRGB, red: 0.376, green: 0.365, blue: 0.357, opacity: 1.0), labelString: "Graphite")
                        }
                    }
                        .background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0)) // Gray Background

                    // Choose your capacity
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            Text("Choose your capacity.").font(.title2).bold()
                            Text("Your current iPhone X is a 64 GB model.").font(.caption).foregroundColor(.gray)
                            Text("How much capacity is right for you?").font(.caption).foregroundColor(.blue)
                        }
                        HStack{
                            CapacityItemView(capacity: "128GB", price: "999", monthlyPrice: "41.62")
                            CapacityItemView(capacity: "256GB", price: "1099", monthlyPrice: "45.79")
                        }
                        HStack{
                            CapacityItemView(capacity: "512GB", price: "1299", monthlyPrice: "54.12")
                            CapacityItemView(capacity: "1TB", price: "1499", monthlyPrice: "62.46")
                        }
                    }.padding()
                        .background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0)) // Gray Background
                }.padding().background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0)) // Gray Background
            }
        }
}

#Preview {
    ContentView()
}
