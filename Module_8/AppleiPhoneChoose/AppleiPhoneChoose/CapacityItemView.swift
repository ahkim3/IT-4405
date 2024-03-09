//
//  CapacityItemView.swift
//  AppleiPhoneChoose
//
//  Created by Andrew Kim on 3/8/24.
//

import SwiftUI

struct CapacityItemView: View {
    var capacity: String = ""
    var price: String = ""
    var monthlyPrice: String = ""
    var advert: String = ""

    init(capacity: String, price: String, monthlyPrice: String) {
        self.capacity = capacity
        self.price = price
        self.monthlyPrice = monthlyPrice

        self.advert = "From $" + price + " or $" + monthlyPrice + "/mo. before trade-in*"
    }

    var body: some View {
        RoundedRectangle(cornerRadius: 7.0)
            .stroke(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0)) // Border color of the boxes
            .frame(width: 181, height: 80)
            .background(Color.white)
            .overlay(
                VStack{
                    Text(capacity + "²") // Capacity
                        .font(.title3)
                        .foregroundColor(.black)
                    Text(advert)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
            )
    }
}

#Preview {
    CapacityItemView(capacity: "128", price: "999", monthlyPrice: "41.62")
}
