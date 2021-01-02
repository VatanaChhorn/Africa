//
//  ContentView.swift
//  Africa
//
//  Created by Vatana Chhorn on 24/11/2020.
//

import SwiftUI


struct ContentView: View {
    
    // MARK: - Properties
    
    let animals : [Animal] = Bundle.main.decodable("animals.json")
    
    @State private var isGridViewActive : Bool = false
    
    let haptic  = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var gridLayout : [GridItem] = [ GridItem(.flexible()) ]
    @State private var gridColumn : Int = 1
    @State private var toolBarIcon : String = "square.grid.2x2"
    
    // MARK: - FUNCTION
    
    func gridSwitch () {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid Column: \(gridColumn)")
        
        // TOOLBAR IMAGE
        switch gridColumn {
        case 1:
            toolBarIcon = "rectangle.grid.1x2"
        case 2:
            toolBarIcon = "square.grid.2x2"
        case 3:
            toolBarIcon = "square.grid.3x2"
        default:
            toolBarIcon = "square.grid.2x2"
        }
    }
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 250)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .padding(.vertical, 30)
                        
                        ForEach(animals) {
                            animal in
                            NavigationLink (
                                destination: AnimalDetailView(animals: animal) ) {
                                animalListItemView(animal: animal)
                            }
                        }  //:  Nav Link
                    }   //:  End List
                } else {
                    ScrollView(.vertical, showsIndicators: false ) {
                        LazyVGrid (columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { item in
                                NavigationLink(
                                    destination: AnimalDetailView(animals: item),
                                    label: {
                                        AnimalGridItemView(animal: item)
                                    })
                                
                            }  //: LOOOPS
                        }  //: GRID
                        .padding(10)
                        .animation(.easeIn)
                    }  //: SCROLL
                }  //: CONDITION
            }  //: GROUP
            .navigationBarTitle("AFRICA", displayMode : .large)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // LIST
                    HStack (spacing: 16) {
                        Button(action: {
                            print("List View Is Activated")
                            isGridViewActive = false
                            haptic.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        
                        // GRID
                        Button(action: {
                            print("Grid View Is Activated")
                            isGridViewActive = true
                            haptic.impactOccurred()
                            gridSwitch()
                        }) {
                            Image(systemName: toolBarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                        
                    }  //: HStack
                }  //: TOOLBAR ITEM
            })  //: TOOLBAR
        }  //: End Navigation
    }
}

// MARK: - REVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
