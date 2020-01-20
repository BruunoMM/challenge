struct Match: Hashable, Codable, Identifiable {
    var id: Int
    var homeTeam: String
    var awayTeam: String
    var location: String
    
    enum CodingKeys: String, CodingKey {
        case homeTeam = "home_team"
        case awayTeam = "away_team"
        case location
        case id
    }
}

