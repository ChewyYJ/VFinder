//
//  imageview.swift
//  Eventualapp
//
//  Created by user on 5/6/24.
//

import SwiftUI

struct imageview: View {
    var imageName: String
    var eventName: String
    var friendNum: String
    @State private var offset = CGSize.zero
    @State private var color: Color = .gray.opacity(0.5)
    @State private var isTextVisible = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .frame(width:380, height: 420)
                    .border(.brown, width: 3.0)
                    .foregroundColor(color)
                    .cornerRadius(10)
                    .shadow(radius: 4)
                    .offset(x:0, y: -80)
                
                NavigationLink(destination: information()){
                    Image(imageName)
                        .resizable()
                        .frame(width: 370 , height: 320)
                        .offset(x:0, y: -130)
                    
                }
                .onTapGesture {
                    isTextVisible.toggle() // Toggle text visibility
                }
                
                if isTextVisible {
                    Text("\(Image(systemName: "arrowshape.turn.up.left"))   Swipe to choose   \(Image(systemName: "arrowshape.turn.up.right"))")
                        .padding([.bottom, .trailing], -500)
                        .offset(x: -130,y: 150)
                        .font(.system(size:25))
                                }
                
                VStack {
                    Text(eventName) // array in images try
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .offset(x: 0, y: 70)
                    
                    Text("Location: 5 Simon Rd, Singapore 545893 ")
                
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                        .offset(x: 0, y: 70)
                    Text("Price Range: $20-$30")
                                        .foregroundColor(.black)
                                        .font(.system(size: 10))
                                        .offset(y: 70)
                    

                }
            }
        }
        .offset(x:0, y:70)
            
            
        
    
    
            
            
           
        
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
        DragGesture()
            .onChanged { gesture in
                offset = gesture.translation
                withAnimation {
                    changeColor(width: offset.width)
                }
                
            } . onEnded { _ in
                withAnimation {
                    swipeCard(width: offset.width)
                    changeColor(width: offset.width)
                }
            }
        )
    }
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(imageName) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...(500):
            print("\(imageName) added")
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func changeColor(width: CGFloat){
        switch width {
        case -500...(-70):
            color = .red
        case 70...(500):
            color = .green
        default:
            color = .gray.opacity(0.5)
        }
    }
}


struct images_Preview: PreviewProvider {
    static var previews: some View {
//        cardview(person: "Event1")
        images()
    }
}

