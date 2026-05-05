import SwiftUI

struct VirtualControllerView: View {
    var body: some View {
        ZStack {
            // গেমের কন্টেন্ট এখানে থাকবে
            Color.black.ignoresSafeArea()
            Text("Game Running with JIT Support").foregroundColor(.white)
            
            // ভার্চুয়াল জয়স্টিক লেআউট
            HStack {
                // বাম পাশের জয়স্টিক
                Circle()
                    .fill(Color.white.opacity(0.3))
                    .frame(width: 100, height: 100)
                    .overlay(Circle().fill(Color.gray).frame(width: 40, height: 40))
                
                Spacer()
                
                // ডান পাশের বাটন (PS4 স্টাইল)
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        CircleButton(label: "△")
                    }
                    HStack(spacing: 40) {
                        CircleButton(label: "□")
                        CircleButton(label: "○")
                    }
                    CircleButton(label: "✕")
                }
            }
            .padding(40)
        }
    }
}

struct CircleButton: View {
    let label: String
    var body: some View {
        Text(label)
            .font(.title)
            .frame(width: 50, height: 50)
            .background(Color.white.opacity(0.2))
            .clipShape(Circle())
            .foregroundColor(.white)
    }
}
