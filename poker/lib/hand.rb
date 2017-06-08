class Hand
  attr_reader :hand
  def initialize(cards)
    raise 'I have been short changed! ;(' if cards.length < 5
    @hand = cards
  end
end
