require 'rspec'
require 'towers'

describe Tower do
  describe '#initialize' do
    subject(:towers) { Tower.new }
    it 'should create 3 arrays' do
      expect(towers.length).to eq(3)
    end

  end

  describe '#move' do

  end

  describe '#won?' do

  end

end
