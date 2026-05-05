import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    NavigationLink(destination: GameListView()) {
                        DashboardBox(title: "Start Game", icon: "play.fill", color: .green)
                    }
                    
                    NavigationLink(destination: LibraryView()) {
                        DashboardBox(title: "Library", icon: "books.vertical.fill", color: .blue)
                    }
                    
                    NavigationLink(destination: CloudGamingView()) {
                        DashboardBox(title: "Cloud Gaming", icon: "cloud.fill", color: .purple)
                    }
                    
                    NavigationLink(destination: SettingsView()) {
                        DashboardBox(title: "Settings", icon: "gearshape.fill", color: .gray)
                    }
                }
                .padding()
            }
            .navigationTitle("Game Hub")
        }
    }
}

struct DashboardBox: View {
    let title: String
    let icon: String
    let color: Color
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .padding()
            Text(title)
                .font(.headline)
        }
        .frame(width: 160, height: 160)
        .background(color.opacity(0.2))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(color, lineWidth: 2))
    }
}
