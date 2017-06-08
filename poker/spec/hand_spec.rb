require 'hand'
require 'rspec'
require 'card'

describe Hand do

  describe '#initialize' do
    let(:hand) {[
                Card.new(:spades, :ten),
                Card.new(:hearts, :five),
                Card.new(:hearts, :ace),
                Card.new(:diamonds, :two),
                Card.new(:hearts, :two)
                ]}
    let(:short_hand) { hand.take(2) }
    it 'should return and accept an array of 5 cards' do
      expect { Hand.new(short_hand) }.to raise_error('I have been short changed! ;(')
      expect(hand.length).to eq(5)

    end

  end

  # context 'logic of calculating a winning hand' do
  #   describe '#pair' do
  #     let(:has_pair?) { count { |card| card.value == :two} }
  #
  #
  #     expect()
  #   end
  # end
  #
  # context 'logic of best winning hand' do
  #
  # end
end
