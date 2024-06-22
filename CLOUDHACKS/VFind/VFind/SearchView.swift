import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("cafeBG")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Text("View Favorites")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)

                    NavigationLink(destination: CafeSummaryView()) {
                        Text("Cafes Summary")
                            .font(.title2)
                            .padding()
                            .background(Color(red: 108/255, green: 20/255, blue: 195/255)) // RGB values for HEX 6C14C3
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .navigationBarTitle("")

        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
