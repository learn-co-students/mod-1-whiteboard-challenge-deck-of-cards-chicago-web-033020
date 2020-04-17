require 'pry'

class Deck
  
  attr_accessor :cards

  def initialize
    @cards = []
    suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    52.times do |card|
      card = Card.new(suit.sample, rank.sample)
      @cards << card
    end
  end

  def choose_card
    self.cards.shift
  end

end

class Card

  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end