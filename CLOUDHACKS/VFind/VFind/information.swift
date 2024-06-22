//
//  information.swift
//  Eventualapp
//
//  Created by user on 5/6/24.
//

import SwiftUI

struct information: View {
    var body: some View {
        VStack {
            Image("m2")
                .resizable()
                .frame(width: 290, height: 180)
            
            Text("Lola Cafe")
                .font(.title)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading) {
                Text("Location:")
                    .font(.headline)
                    .padding()
                
                Text("Address: 5 Simon Rd, Singapore 545893")
                    .font(.body)
                    .padding(.horizontal)
                    .padding(.top, -18)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("Date:")
                        .font(.headline)
                    Text("August 20, 2024")
                        .font(.body)
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Price Range/person:")
                        .font(.headline)
                    Text("$20-$30")
                        .font(.body)
                }
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            VStack {
                Text("Time:")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.top, 5)
                
                Text("9 am–10 pm")
                    .font(.body)
                    .padding(.horizontal)
                    .padding(.top, 0)
                
                Text("Evelyn, +2 more liked this event")
                    .font(.body)
                    .padding(.top)
            }
        }
        .padding()
    }
}

struct informationView_Previews: PreviewProvider {
    static var previews: some View {
        information()
    }
}
