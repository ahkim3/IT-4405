//
//  FinishItemView.swift
//  AppleiPhoneChoose
//
//  Created by Andrew Kim on 3/8/24.
//

import SwiftUI

struct FinishItemView: View {
    var color = Color.clear
    var labelString = ""
    // other struct values
    init(color: Color, labelString: String) {
        self.color = color
        self.labelString = labelString
    }
    var body: some View {
    // SwiftUI code for the UI goes here and the color and labelString properties are used in the code.
        // Examples:
        //   Circle().fill(color)
        //   Text(labelString)

        RoundedRectangle(cornerRadius: 7.0)
            .stroke(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0)) // Border color of the boxes
            .frame(width: 181, height: 80)
            .background(Color.white)
            .overlay(
                VStack{
                    Circle() // Color preview
                        .strokeBorder(Color.gray,lineWidth: 0.3)
                        .background(Circle().foregroundColor(color))
                        .frame(width: 25, height: 25)
                    Text(labelString) // Color name
                        .foregroundColor(.black)
                }
            )
    }
}

#Preview {
    FinishItemView(color: Color(.sRGB, red: 0.694, green: 0.776, blue: 0.851, opacity: 1.0), labelString: "Sierra Blue")
}
