//
//  images.swift
//  Eventualapp
//
//  Created by user on 5/6/24.
//

import SwiftUI

struct images: View {
    private var imageNames = ["m1", "m4", "m3", "m2"]
    private var eventNames = [" Enchanted Cafe", "Neptune", "Nesuto", "Lola Cafe"]
    private var friendNum = ["2", "2", "4", "3"]
    
    
    var body: some View {
        
        VStack {
            ZStack {
                ForEach(0..<min(imageNames.count, eventNames.count, friendNum.count), id: \.self) { index in
                    imageview(imageName: self.imageNames[index], eventName: self.eventNames[index], friendNum: self.friendNum[index])
                }
            }
        }
    }
}
    


struct images_Previews: PreviewProvider {
    static var previews: some View {
        images()
    }
}

