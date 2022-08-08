//
//  ColorDotView.swift
//  Furniture_app
//
//  Created by Zafarjon on 08/08/22.
//

import SwiftUI

struct ColorDotView: View {
    let color: Color
    
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}

struct ColorDotView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDotView(color: Color("Primary"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
