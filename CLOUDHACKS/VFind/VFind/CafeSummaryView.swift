import SwiftUI

struct CafeSummaryView: View {
    let cafes: [(name: String, imageName: String, location: String, priceRange: String, nearestMRT: String)] = [
        ("Lola Cafe", "cafeImage1", "5 Simon Rd, Singapore 545893", "$20-$30", "Holland Village MRT"),
        ("Neptune Cafe", "cafeImage2", "237 E Coast Rd, Singapore 428930", "$20-$30", "Paya Lebar MRT"),
        ("The Book Cafe", "cafeImage3", "Location 3", "$", "MRT 3"),
        ("Apricus", "cafeImage4", "Location 4", "$$", "MRT 4"),
        ("Gudetama", "cafeImage5", "Location 5", "$$$", "MRT 5"),
        ("Cafe 6", "cafeImage6", "Location 6", "$", "MRT 6")
    ]
    
    var body: some View {
        VStack {
            Text("Your Favorite Cafes")
                .font(.largeTitle)
                .padding()

            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(cafes, id: \.name) { cafe in
                        NavigationLink(destination: CafeDetailView(cafe: cafe)) {
                            VStack {
                                Image(cafe.imageName)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(10)
                                Text(cafe.name)
                                    .font(.caption)
                            }
                            .padding()
                        }
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle("Favorites")
    }
}

struct CafeSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        CafeSummaryView()
    }
}
