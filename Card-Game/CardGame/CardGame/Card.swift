struct Card {
    let suit: Suit
    let rank: Rank
    
    var description: String {
        return "\(rank.description)\(suit.rawValue)"
    }
}
