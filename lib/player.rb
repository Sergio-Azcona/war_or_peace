class Player
  attr_reader :name, :deck
  def initialize(name, deck)
    @name = name
    @deck = deck
    @lost = false
  end

  def has_lost?
      (@deck.cards.count > 0) == @lost
  end
end