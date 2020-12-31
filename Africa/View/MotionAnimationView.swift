//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Vatana Chhorn on 31/12/2020.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    
    // MARK: - FUNCTION
    
    // 1. RANDOM COORDINATE
    
    func randomCoordicate (max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    // 2. RANDOM SIZE
    
    func randomSize () -> CGFloat {
        return CGFloat.random(in: 0...300)
    }
    
    // 3. RANDOM SCALE
    
    func randomSclae () -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. RANDOM SPEED
    
    func randomSpeed () -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    // 5. RANDOM DELAY
    
    func randomDelay () -> Double {
        return Double.random(in: 0...2)
    }
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimation : Bool = false
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0 ..< randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment:  .center)
                        .scaleEffect(isAnimation ? randomSclae() : 1 )
                        .position(
                            x : randomCoordicate(max: geometry.size.width),
                            y : randomCoordicate(max: geometry.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimation = true
                        })
                }  //: LOOP
                
            }  //:  ZStack
            .drawingGroup()
        }  //: GEOMETRY
    }
}

// MARK: - PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
