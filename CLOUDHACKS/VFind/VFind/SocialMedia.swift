import SwiftUI

struct InstagramPageView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Profile Header
                ProfileHeaderView()

                // Posts
                ScrollView {
                    LazyVStack(spacing: 20) {
                        ForEach(posts) { post in
                            PostView(post: post)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("")
        }
    }
}

// Profile Header View
// Profile Header View
struct ProfileHeaderView: View {
    var body: some View {
        HStack {
            Image("rabbit") // Replace with your profile picture
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.trailing, 10)

            VStack(alignment: .leading, spacing: 8) {
                Text("Olivia Chew")
                    .font(.title)
                Text("Food is LIFE!")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            HStack(spacing: 16) {
                Button(action: {
                    // Action for plus button
                }) {
                    Image(systemName: "plus")
                        .imageScale(.large)
                }
                .foregroundColor(.blue)

                Button(action: {
                    // Action for search button
                }) {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                }
                .foregroundColor(.blue)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.blue, lineWidth: 1)
            )
        }
        .padding()
    }
}

// Post View
// Post View
struct PostView: View {
    let post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Post Image
            post.image
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300) // Adjust size as needed
                .clipped()
                .cornerRadius(10) // Optional: add corner radius

            // Actions (like, comment, share, save)
            HStack(spacing: 20) {
                Button(action: {
                    // Action for like
                }) {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }

                Button(action: {
                    // Action for comments
                }) {
                    Image(systemName: "bubble.left")
                        .imageScale(.large)
                }

                Button(action: {
                    // Action for share
                }) {
                    Image(systemName: "arrowshape.turn.up.right")
                        .imageScale(.large)
                }

                Spacer()

                Button(action: {
                    // Action for save
                }) {
                    Image(systemName: "star")
                        .imageScale(.large)
                }
            }
            .padding(.horizontal)

            // Username and Description
            VStack(alignment: .leading, spacing: 4) {
                Text(post.username)
                    .font(.headline)
                Text("Food is amazing! 🍔🥗")
                    .font(.body)
                    .foregroundColor(.black)
            }

            // Comments
            VStack(alignment: .leading, spacing: 4) {
                ForEach(post.comments, id: \.self) { comment in
                    Text(comment)
                }
            }
            .font(.body)
            .foregroundColor(.black)

            Divider()
        }
        .padding(.horizontal, 16)
    }
}

// Model for a Post
struct Post: Identifiable {
    var id = UUID()
    var username: String
    var image: Image
    var likes: Int
    var comments: [String]
}

// Sample posts
let posts = [
    Post(username: "john_doe", image: Image("matchaya"), likes: 23, comments: [""]),
    Post(username: "jane_smith", image: Image("mexican"), likes: 45, comments: [""]),
    Post(username: "alex_wong", image: Image("nesutp"), likes: 12, comments: [""])
]

struct InstagramPageView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramPageView()
    }
}
