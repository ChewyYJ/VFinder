import SwiftUI

struct CafeDetailView: View {
    let cafe: (name: String, imageName: String, location: String, priceRange: String, nearestMRT: String)
    
    // Sample ratings and reviews data
    let ratings: Double = 4.7
    let reviews: [String] = [
        "Great atmosphere and friendly staff!",
        "Delicious coffee and pastries.",
        "A bit crowded during peak hours."
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                Image(cafe.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding()

                Text(cafe.name)
                    .font(.largeTitle)
                    .padding()

                VStack(alignment: .leading, spacing: 10) {
                    Text("Location: \(cafe.location)")
                    Text("Price Range: \(cafe.priceRange)")
                    Text("Nearest MRT: \(cafe.nearestMRT)")
                }
                .font(.title2)
                .padding()

                Divider()

                // Ratings section
                HStack {
                    Text("Ratings:")
                        .font(.title)
                    Text("\(ratings, specifier: "%.1f")")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                }
                .padding(.top, 10)
                .padding(.horizontal)

                Divider()

                // Reviews section
                VStack(alignment: .center, spacing: 10) {
                    Text("Reviews")
                        .font(.title)
                        .padding(.top)

                    ForEach(reviews, id: \.self) { review in
                        VStack(alignment: .center, spacing: 8) {
                            Text("\"\(review)\"")
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            Divider()
                        }
                    }
                }
                .padding()

                Spacer()
            }
            .navigationBarTitle(cafe.name, displayMode: .inline)
        }
    }
}

struct CafeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafeDetailView(cafe: ("Lola Cafe", "cafeImage1", "5 Simon Rd, Singapore 545893", "$20-$30", "Holland Village MRT"))
    }
}
