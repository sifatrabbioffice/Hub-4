import SwiftUI

@main
struct GameHubApp: App {
    @State private var showWelcome = true
    
    var body: some Scene {
        WindowGroup {
            if showWelcome {
                VStack {
                    Text("Welcome Sifat")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                .onAppear {
                    // ২ সেকেন্ড পর অটোমেটিক ড্যাশবোর্ডে যাবে
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            showWelcome = false
                        }
                    }
                }
            } else {
                ContentView() // এরপর ড্যাশবোর্ড দেখাবে
            }
        }
    }
}
