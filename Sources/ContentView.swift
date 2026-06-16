import SwiftUI

// Milestone 1 screen: a deliberately tiny UI that confirms the app launched
// on the iPhone. It also shows the device + iOS version, which is useful to
// confirm we're targeting the right hardware (VideoToolbox capabilities).
struct ContentView: View {
    // App accent (the desktop "Fusion" amber), so the brand carries over.
    private let amber = Color(red: 1.0, green: 0.54, blue: 0.24)

    var body: some View {
        ZStack {
            Color(red: 0.08, green: 0.08, blue: 0.09).ignoresSafeArea()
            VStack(spacing: 18) {
                Image(systemName: "music.note.list")
                    .font(.system(size: 64, weight: .semibold))
                    .foregroundStyle(amber)
                Text("Spindle999")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundStyle(.white)
                Text("iOS · Milestone 1")
                    .font(.headline)
                    .foregroundStyle(.gray)
                VStack(spacing: 4) {
                    Text(UIDevice.current.model)
                    Text("\(UIDevice.current.systemName) \(UIDevice.current.systemVersion)")
                }
                .font(.subheadline)
                .foregroundStyle(.gray)
                .padding(.top, 6)

                Text("La pipeline di build e installazione funziona ✅")
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(amber)
                    .padding(.top, 12)
                    .padding(.horizontal, 32)
            }
        }
    }
}

#Preview {
    ContentView()
}
