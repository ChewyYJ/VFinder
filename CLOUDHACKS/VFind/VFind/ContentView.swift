import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                images() // Use the images view as the main content
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                InstagramPageView() // Placeholder for Search view
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                SearchView()
                    .tabItem {
                        Label("Favorites", systemImage: "star")
                        Text("Profile") // Placeholder for Profile view
                            .tabItem {
                                Label("Connect", systemImage: "person")
                            }
                        
                    }
                
            }
            .navigationTitle("")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
