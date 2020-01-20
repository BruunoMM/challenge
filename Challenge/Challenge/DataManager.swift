import Foundation

let matches: [Match] = loadMatches(fileName: "matches")

func loadMatches(fileName: String) -> [Match] {
    if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode([Match].self, from: data)
            return jsonData
        } catch {
            print("Error Decoding JSON:\(error)")
        }
    }
    return []
}
