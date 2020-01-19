import SwiftUI

struct MatchView: View {
    let teamShieldSize: CGFloat = 60.0
    let xSymbolSize: CGFloat = 20.0
    var homeTeam: String!
    var awayTeam: String!
    
    init(homeTeam: String, awayTeam: String) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
    }
    
    var body: some View {
        HStack() {
            HStack() {
                Text(homeTeam)
                    .font(.system(size: 20.0))
                Image(homeTeam)
                    .resizable()
                    .frame(width: teamShieldSize, height: teamShieldSize)
            }
            Spacer()
            Image("XSymbol")
                .resizable()
                .frame(width: xSymbolSize, height: xSymbolSize)
            Spacer()
            HStack() {
                Image(awayTeam)
                    .resizable()
                    .frame(width: teamShieldSize, height: teamShieldSize)
                Text(awayTeam)
                    .font(.system(size: 20.0))
            }
        }
        .padding(.horizontal, 25.0)
        .padding(.vertical, 20.0)
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView(homeTeam: "FLA", awayTeam: "GRE")
    }
}
