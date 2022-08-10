//
//  DescriptionView.swift
//  Furniture_app
//
//  Created by Zafarjon on 08/08/22.
//

import SwiftUI

struct DescriptionView: View {
    let description: DescriptionModel
    let colors: [Color]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(description.name) \nChair")
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.bold)
            HStack(spacing: 4) {
                ForEach(0..<5) { i in
                    Image("star")
                }
                Text("(4.9)")
                    .foregroundColor(.black)
                    .opacity(0.5)
                    .padding(.leading)
                Spacer()
            }
            
            Text("Description")
                .foregroundColor(.black)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text(description.desctiption)
                .foregroundColor(.black)
                .lineSpacing(8)
                .opacity(0.6)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Size")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text("Height: \(description.height) cm")
                        .foregroundColor(.black)
                        .opacity(0.6)
                    Text("Width: \(description.width) cm")
                        .foregroundColor(.black)
                        .opacity(0.6)
                    Text("Diameter: \(description.diameter) cm")
                        .foregroundColor(.black)
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text("Treatment")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    
                    Text(description.treatment)
                        .foregroundColor(.black)
                        .opacity(0.6)
                        .lineLimit(nil)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.vertical)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Colors")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                    
                    HStack {
                        ForEach(colors, id: \.self) { color in
                            ColorDotView(color: color)
                        }
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Quantity")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                    
                    CounterView()
                }
                
            }
            
        }
        .padding()
        .padding()
        .background(Color("Bg"))
        .cornerRadius(40)
    }
}


struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DescriptionView(description:
                DescriptionModel(
                    name: "Luxury Swedian Chair",
                    desctiption: "Luxury Swedian Chiar is a contemporary chair base on the virtues of modern craft. It carries on the simplicity an honestly of the archetypical chiar.",
                    height: 20,
                    width: 80,
                    diameter: 72,
                    treatment: "Jeti Wood, Canvas, Amazing Love"
                ),
                            colors: [Color("Primary"), Color.white, Color.black]
            )
                .padding()
            .previewLayout(.sizeThatFits)
            DescriptionView(description:
                                DescriptionModel(
                                    name: "Luxury Swedian Chair",
                                    desctiption: "Luxury Swedian Chiar is a contemporary chair base on the virtues of modern craft. It carries on the simplicity an honestly of the archetypical chiar.",
                                    height: 20,
                                    width: 80,
                                    diameter: 72,
                                    treatment: "Jeti Wood, Canvas, Amazing Love"
                                ), colors: [Color.blue, Color.green, Color.white]
            )
            .preferredColorScheme(.dark)
            .padding()
            .previewLayout(.sizeThatFits)
        }
    }
}
