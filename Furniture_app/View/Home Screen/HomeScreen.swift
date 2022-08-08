//
//  HomeScreen.swift
//  Furniture_app
//
//  Created by Zafarjon on 31/07/22.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedIndex = 0
    @State var showDetailScreen = false
    @State var  selectedProduct = ""
    private let categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Table"]
    private let products = ["chair_1", "chair_2", "chair_3", "chair_4"]
    
    var body: some View {
        ZStack {
            Color("Bg")
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    AppBarView()
                    
                    TagLineView()
                        .padding()
                    
                    SearchAndScanView()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< categories.count) { item in
                                CategoryItemView(isActive: item == selectedIndex, text: categories[item])
                                    .onTapGesture {
                                        selectedIndex = item
                                    }
                            }
                            
                        }
                        .padding()
                    }
                    
                    Text("Popular")
                        .font(.custom("PlayfairDisplay-Bold", size: 24))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<4) { index in
                                ProductCardView(image: Image("chair_\(index+1)"), size: 210)
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    
                    Text("Best")
                        .font(.custom("PlayfairDisplay-Bold", size: 24))
                        .padding(.horizontal)
                        .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products, id: \.self) { product in
                                ProductCardView(image: Image(product), size: 180)
                                    .onTapGesture {
                                        showDetailScreen.toggle()
                                        selectedProduct = product
                                    }
                                    .fullScreenCover(isPresented: $showDetailScreen) {
                                        DetailScreen(image: $selectedProduct)
                                    }
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    
                    
                }
            }
            
            HStack {
                BottomNavBarItem(image: Image("Home")) {}
                BottomNavBarItem(image: Image("fav")) {}
                BottomNavBarItem(image: Image("shop")) {}
                BottomNavBarItem(image: Image("User")) {}
            }
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .padding()
            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
