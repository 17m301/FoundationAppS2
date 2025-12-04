import SwiftUI

struct ColorGradient: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(hex: "202155"),
                    Color(hex: "4962D4"),
                    Color(hex: "6F6BFF"),
                    Color(hex: "6FEBFF")
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        }
    }
}
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255

        self.init(red: r, green: g, blue: b)
    }
}
