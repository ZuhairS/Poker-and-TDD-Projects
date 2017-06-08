class Deck

  SUITS = [:spades, :hearts, :diamonds, :clubs]
  VALUES = [:ace, :king, :queen, :jack, :ten, :nine, :eight, :seven, :six, :five, :four, :three, :two]

  attr_accessor :full_stack, :discarded_cards

  def initialize
    @full_stack = Deck.populate_deck
    @discarded_cards = []
  end

  def self.populate_deck
    deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck
  end

  def shuffle
    @full_stack.shuffle!
  end

  def deal
    raise 'Deck is empty!' if @full_stack.empty?
    popped_card = @full_stack.pop
    @discarded_cards << popped_card
    popped_card
  end

end
