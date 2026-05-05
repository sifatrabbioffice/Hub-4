import SwiftUI

@main
struct GameHubApp: App {
    @State private var isWelcomeActive = true
    
    var body: some Scene {
        WindowGroup {
            if isWelcomeActive {
                // স্প্ল্যাশ স্ক্রিন: Welcome Sifat
                VStack {
                    Text("Welcome Sifat")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .foregroundColor(.blue)
                }
                .onAppear {
                    // ২ সেকেন্ড পর মূল ড্যাশবোর্ডে চলে যাবে
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isWelcomeActive = false
                        }
                    }
                }
            } else {
                ContentView()
            }
        }
    }
}
