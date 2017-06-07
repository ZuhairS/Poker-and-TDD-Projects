require 'poker'
require 'rspec'

describe Card do
  describe "#initialize" do
    subject(:ace_of_clubs) { Card.new(:club, :ace) }

    it 'should create a card object' do
      expect(ace_of_clubs).to be_an_instance_of(Card)
    end
  end
end

describe Deck do
  describe '#initialize' do
    subject(:deck) { Deck.new.full_stack }
    it 'should create an array of cards' do
      expect(deck.length).to eq(52)
    end
  end

  describe '::populate_deck' do
    subject(:populate) {Card.populate_deck}
    it 'should return an array with 52 cards' do
      expect(populate.length).to eq(52)
    end
    it 'should include a card object' do
      expect(populate).to include(Card.new(:hearts, :five))
      expect(populate).to include(Card.new(:spades, :jack))
      expect(populate).to include(Card.new(:diamonds, :ace))
    end
  end

  describe '#shuffle' do
    subject(:shuffle) { Deck.new.shuffle }
    it 'should randomize the card positions in the deck' do
      expect(shuffle).not_to eq(Deck.new)
    end
  end
end
