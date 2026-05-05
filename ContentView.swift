import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    // ১. স্টার্ট গেম
                    NavigationLink(destination: Text("Local Games List (GTA V, etc.)")) {
                        MenuBox(title: "Start Game", icon: "play.circle")
                    }
                    // ২. লাইব্রেরি
                    NavigationLink(destination: Text("Game Library")) {
                        MenuBox(title: "Library", icon: "folder")
                    }
                    // ৩. ক্লাউড গেমিং
                    NavigationLink(destination: CloudMenu()) {
                        MenuBox(title: "Cloud Gaming", icon: "cloud")
                    }
                    // ৪. সেটিংস
                    NavigationLink(destination: Text("Graphics & Power Settings")) {
                        MenuBox(title: "Settings", icon: "gear")
                    }
                }
                .padding()
            }
            .navigationTitle("Game Hub Engine")
        }
    }
}

struct CloudMenu: View {
    var body: some View {
        List {
            NavigationLink("Xbox Cloud Gaming") {
                Text("Loading PS4 style Virtual Controller...")
                // এখানে আপনার ভার্চুয়াল জয়স্টিক ইমপ্লিমেন্ট হবে
            }
            NavigationLink("Other Cloud Service") {
                Text("Coming Soon")
            }
        }
        .navigationTitle("Select Cloud Service")
    }
}

struct MenuBox: View {
    let title: String
    let icon: String
    var body: some View {
        VStack {
            Image(systemName: icon).font(.largeTitle)
            Text(title).font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(Color.secondary.opacity(0.1))
        .cornerRadius(15)
    }
}
