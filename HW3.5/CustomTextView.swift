//
//  CustomTextView.swift
//  HW3.5
//
//  Created by Dmitry on 15.06.2021.
//

import SwiftUI

struct CustomTextView: View {
    let phoneNumber: String
    let imageName: String
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(phoneNumber)
        }
    }
}

struct CustomTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextView(phoneNumber: "123", imageName: "123")
    }
}
