require 'deck'
require 'rspec'

describe Deck do
  describe '#initialize' do
    subject(:deck) { Deck.new.full_stack }
    it 'should create an array of cards' do
      expect(deck.length).to eq(52)
    end
  end

  describe '::populate_deck' do
    subject(:populate) { Deck.populate_deck }
    let(:any_value) { populate.any? { |card| card.value == :jack } }
    let(:any_suit) { populate.any? { |card| card.suit == :hearts } }
    let(:any_duplicate) { populate.count { |card| card.suit == :hearts && card.value == :two} }

    it 'should return an array with 52 cards' do
      expect(populate.length).to eq(52)
    end
    it 'should include a card object' do
      expect(any_value).to be true
      expect(any_suit).to be true
      expect(any_duplicate).to eq(1)
    end
  end

  describe '#shuffle' do
    subject(:deck) { Deck.new }
    it 'should randomize the card positions in the deck' do
      copy = deck.full_stack.dup
      expect(deck.shuffle).to match_array(copy)
    end
  end

  describe '#deal' do
    subject(:deck) { Deck.new }
    it 'should raise error if deck is empty' do
      deck.full_stack = []
      expect { deck.deal }.to raise_error('Deck is empty!')
    end

    it 'should return the last card in the deck' do
      last_card = deck.full_stack.dup.pop
      expect(deck.deal).to eq(last_card)
    end

    it 'should add dealt card to discarded cards' do
      last_card = deck.full_stack.dup.pop
      deck.deal
      expect(deck.discarded_cards.last).to eq(last_card)
    end
  end
end
