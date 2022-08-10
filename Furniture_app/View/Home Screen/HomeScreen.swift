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
    @State var selectedProduct = ProductModel(id: 1, image: Image(""), price: 0, description: DescriptionModel(name: "", desctiption: "", height: 0, width: 0, diameter: 0, treatment: ""), colors: [])
    private let categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Table"]
    
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
                        .foregroundColor(.black)
                        .font(.custom("PlayfairDisplay-Bold", size: 24))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(productsList) { product in
                                ProductCardView(size: 210, product: product)
                                    .onTapGesture {
                                        selectedProduct = product
                                        showDetailScreen.toggle()
                                        //print(product.id)
                                    }
                                    .fullScreenCover(isPresented: $showDetailScreen) {
                                        DetailScreen(product: $selectedProduct)
                                        //print(product.id)
                                    }
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    
                    Text("Best")
                        .foregroundColor(.black)
                        .font(.custom("PlayfairDisplay-Bold", size: 24))
                        .padding(.horizontal)
                        .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(productsList) { product in
                                ProductCardView(size: 180, product: product)
                                    .onTapGesture {
                                        showDetailScreen.toggle()
                                        selectedProduct = product
                                    }
                                    .fullScreenCover(isPresented: $showDetailScreen) {
                                        DetailScreen(product: $selectedProduct)
                                    }
                            }
                            .padding(.trailing)
                        }
                        .padding(.leading)
                    }
                    
                    
                }
                .padding(.bottom, 100)
                .padding(.top)
            }
            
            
            
            HStack {
                BottomNavBarItem(image: Image(systemName: "house.fill")) {}
                BottomNavBarItem(image: Image(systemName: "heart")) {}
                BottomNavBarItem(image: Image(systemName: "cart")) {}
                BottomNavBarItem(image: Image(systemName: "person")) {}
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
