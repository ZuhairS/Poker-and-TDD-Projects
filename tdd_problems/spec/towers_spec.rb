require 'rspec'
require 'towers'

describe Tower do
  describe '#initialize' do
    subject(:towers) { Tower.new.towers }
    it 'should create 3 arrays' do
      expect(towers.length).to eq(3)
    end

    it 'should initialize an array with 3 sorted numbers as the first array' do
      expect(towers.first).to eq([3,2,1])
    end
  end

  describe '#move' do
    subject(:towers) { Tower.new }
    it 'should pop a disc from one tower' do
      towers.move(0, 1)
      expect(towers.towers.first).to eq([3,2])
    end

    it 'should push a disc into another tower' do
      towers.move(0, 1)
      expect(towers.towers[1]).to eq([1])
    end

    it 'should raise error if tower being moved from is empty' do
      expect { towers.move(2, 1) }.to raise_error('Starting tower is empty!')
    end

    it 'should raise error if disk being moved is bigger than top disk on end tower' do
      towers.move(0, 1)

      expect { towers.move(0, 1) }.to raise_error('Bigger disk can not be placed on a smaller disk!')
    end

  end

  describe '#won?' do
    subject(:towers) { Tower.new }

    it 'should not allow win at the start' do
      expect(towers).to_not be_won
    end



    it 'should end game if second or third tower are completely filled' do
      towers.towers[0] = []
      towers.towers[1] = [3,2,1]
      expect(towers).to be_won
    end
  end
end
