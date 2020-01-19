import SwiftUI

struct MatchView: View {
    let teamShieldSize: CGFloat = 60.0
    let xSymbolSize: CGFloat = 20.0
    var match: Match!
    
    init(match: Match) {
        self.match = match
    }
    
    var body: some View {
        HStack() {
            HStack() {
                Text(match.homeTeam)
                    .font(.system(size: 20.0))
                Image(match.homeTeam)
                    .resizable()
                    .frame(width: teamShieldSize, height: teamShieldSize)
            }
            Spacer()
            Image("XSymbol")
                .resizable()
                .frame(width: xSymbolSize, height: xSymbolSize)
            Spacer()
            HStack() {
                Image(match.awayTeam)
                    .resizable()
                    .frame(width: teamShieldSize, height: teamShieldSize)
                Text(match.awayTeam)
                    .font(.system(size: 20.0))
            }
        }
        .padding(.horizontal, 25.0)
        .padding(.vertical, 20.0)
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView(match: Match(homeTeam: "FLA", awayTeam: "GRE"))
    }
}
