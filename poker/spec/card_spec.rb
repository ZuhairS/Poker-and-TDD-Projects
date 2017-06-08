require 'card'
require 'rspec'

describe Card do
  describe "#initialize" do
    subject(:ace_of_clubs) { Card.new(:club, :ace) }

    it 'should create a card object' do
      expect(ace_of_clubs).to be_an_instance_of(Card)
    end
  end
end
