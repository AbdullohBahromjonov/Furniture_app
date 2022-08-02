//
//  SearchAndScanView.swift
//  Furniture_app
//
//  Created by Zafarjon on 31/07/22.
//

import SwiftUI

struct SearchAndScanView: View {
    @State private var search = ""
    
    var body: some View {
        HStack {
            HStack{
                Image("Search")
                    .padding(.trailing)
                TextField("Search Furniture", text: $search)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.trailing)
            
            Button(
                action: {},
                label: {
                    Image("Scan")
                        .padding()
                        .background(Color("Primary"))
                        .cornerRadius(10)
                }
            )
            
        }
        .padding(.horizontal)
    }
}

struct SearchAndScanView_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndScanView()
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Bg"))
    }
}
