//
//  CategoryItemView.swift
//  Furniture_app
//
//  Created by Zafarjon on 31/07/22.
//

import SwiftUI

struct CategoryItemView: View {
    let isActive: Bool
    let text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Primary"): Color.black.opacity(0.5))
            
            if (isActive) {
                Color("Primary")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(isActive: true, text: "All")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
