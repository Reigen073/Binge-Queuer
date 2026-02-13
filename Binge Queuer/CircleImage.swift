// From: https://developer.apple.com/tutorials/swiftui/
import SwiftUI

struct CircleImage: View {
    var image: Image

    private let imageSize: CGFloat = 180

    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: imageSize, height: imageSize)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

#Preview{
    CircleImage(image: Image(.ourplanet))
}
