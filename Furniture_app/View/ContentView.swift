//
//  ContentView.swift
//  Furniture_app
//
//  Created by Zafarjon on 29/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Image("chair_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                
                DescriptionView()
                    .offset(y: -40)
                
            }
            .padding(.bottom, 30)
            
            HStack {
                Text("$1299")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(
                    action: {},
                    label: {
                        Text("Add to Cart")
                            .fontWeight(.semibold)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(Color("Primary"))
                    }
                )
            }
            .padding()
            .padding(.horizontal)
            .background(Color("Primary"))
            .cornerRadius(40, corners: [.topLeft, .topRight])
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Luxury Swedia \nChair")
                .font(.title)
                .fontWeight(.bold)
            HStack(spacing: 4) {
                ForEach(0..<5) { i in
                    Image("star")
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading)
                Spacer()
            }
            
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("Luxury Swedian Chiar is a contemporary chair base on the virtues of modern craft. It carries on the simplicity an honestly of the archetypical chiar.")
                .lineSpacing(8)
                .opacity(0.6)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Size")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text("Height: 20 cm")
                        .opacity(0.6)
                    Text("Wide: 80 cm")
                        .opacity(0.6)
                    Text("Diameter: 72 cm")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text("Treatment")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    
                    Text("Jeti Wood, Canvas, Amazing Love")
                        .opacity(0.6)
                        .lineLimit(nil)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.vertical)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Colors")
                        .fontWeight(.semibold)
                    
                    HStack {
                        ColorDotView(color: .white)
                        ColorDotView(color: .black)
                        ColorDotView(color: Color("Primary"))
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Quantity")
                        .fontWeight(.semibold)
                    
                    HStack {
                        Button(
                            action: {},
                            label: {
                                Image(systemName: "minus")
                                    .padding()
                            }
                        )
                        .frame(width: 30, height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                        .foregroundColor(Color("Primary"))
                        
                        Text("1")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                        
                        Button(
                            action: {},
                            label: {
                                Image(systemName: "plus")
                                    .padding()
                            }
                        )
                        .background(Color("Primary"))
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .foregroundColor(.white)
                    }
                }
                
            }
            
        }
        .padding()
        .padding()
        .background(Color("Bg"))
        .cornerRadius(40)
    }
}

struct ColorDotView: View {
    let color: Color
    
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}
