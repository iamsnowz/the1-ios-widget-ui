import SwiftUI

public struct Reward01SliderFHWidget: View {
    
    @State private var toggle: Bool = false
    public init() { }
    public var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 8) {
                Image(systemName: "globe")
                    .frame(width: 150, height: 150)
                    .foregroundColor(.red)
                    .background(Color.black.opacity(0.2))
                OfferDetailsView
            }
            .frame(width: 150)
            
        }
        .background(Color.blue.opacity(0.1))
        .cornerRadius(8)
    }
}

private extension Reward01SliderFHWidget {
    @ViewBuilder
    var OfferDetailsView: some View {
        VStack(alignment: .leading, spacing: 8) {
            BrandView
            BadgeTitleView
            UnitView
            ActionView
        }
        .padding(.horizontal, 8)
        .padding(.bottom, 8)
    }
    
    @ViewBuilder
    var BrandView: some View {
        Text("GRAM PANCAKE")
            .font(.system(size: 12).bold())
    }
    
    @ViewBuilder
    var BadgeTitleView: some View {
        Label {
            Text("ลุ้นทองฟรี! 1 สลึง ทุกสัปดาห์")
                .font(.system(size: 14))
        } icon: {
            Text("123")
        }
        
    }
    
    @ViewBuilder
    var UnitView: some View {
        HStack(spacing: 4) {
            Text("100")
                .bold()
            Text("Score")
        }
        .font(.system(size: 14))
    }
    
    @ViewBuilder
    var ActionView: some View {
        VStack {
            HStack(spacing: 0) {
                HStack(spacing: 4){
                    TextCapsule(title: "Call or Chat")
                        .layoutPriority(1)
                    TextCapsule(title: "Online")
                        .frame(minWidth: 30)
                }
                Spacer(minLength: 1)
                Image(systemName: toggle ? "heart.fill" : "heart")
                    .font(.system(size: 16))
                    .foregroundColor(Color.red)
                    .onTapGesture {
                        toggle.toggle()
                    }
            }
            .font(.system(size: 10))
            HStack(spacing: 0) {
                HStack(spacing: 4){
                    TextCapsule(title: "Online")
                        .layoutPriority(1)
                    TextCapsule(title: "Call or Chat")
                        .frame(minWidth: 30)
                }
                Spacer(minLength: 1)
                Image(systemName: !toggle ? "heart.fill" : "heart")
                    .font(.system(size: 16))
                    .foregroundColor(Color.red)
                    .onTapGesture {
                        toggle.toggle()
                    }
            }
            .font(.system(size: 10))
        }
    }
}

struct Reward01SliderFHView_Previews: PreviewProvider {
    static var previews: some View {
        Reward01SliderFHWidget()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
        
        //        Reward01SliderFHWidget()
        //            .previewLayout(.sizeThatFits)
        //            .preferredColorScheme(.dark)
    }
}

struct TextCapsule: View {
    let title: String
    var body: some View {
        Text(title)
            .lineLimit(1)
            .padding(.horizontal, 6)
            .padding(.vertical, 2)
            .background(
                Capsule()
                    .stroke(.gray, lineWidth: 0.5))
    }
}
