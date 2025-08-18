import Foundation

var deck: [Card] = []

for suit in Suit.allCases {
    for rank in Rank.allCases {
        deck.append(Card(suit: suit, rank: rank))
    }
}

deck.shuffle()


print("Cards in the deck:")
for i in 0..<5 {
    print(deck[i].description)
}
