require "tdd_problems"
require "rspec"


describe Array do
  describe '#my_uniq' do
    subject(:a) { [1,2,1,3,3] }
    b = ['a', 'b', 'a', 'c', 'c']

    # it 'takes an array' do
    #   expect(:my_uniq).to receive
    # end

    it 'removes duplicate elements' do
      expect(a.my_uniq).to eq(a.uniq)
    end

    it 'returns the uniq elements in the order they appear' do
      expect(a.my_uniq).to eq(a.uniq)
    end

    it 'doesn\'t modify the original array' do
      b.my_uniq
      expect(b).to eq(['a', 'b', 'a', 'c', 'c'])
    end
  end

  describe '#two_sum' do
    let(:array) { [-1, 0, 2, -2, 1] }
    let(:one_zero) { [3, 0, 4] }
    let(:two_zero) { [3, 0, 4, 0] }
    let(:two_sum) { array.two_sum }

    it 'return an array of index pairs whose values sum to 0' do
      expect(two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'doesn\'t modify the original array' do
      two_sum
      expect(array).to eq([-1, 0, 2, -2, 1])
    end

    it 'returns an array of sorted inndex pairs' do
      expect(two_sum).to eq(two_sum.sort)
    end

    it 'does not return an index pair of the same position' do
      expect(one_zero.two_sum).to eq([])
    end

    it 'does return indexes of sums of two zeroes' do
      expect(two_zero.two_sum).to eq([[1,3]])
    end

  end

  describe '#my_transpose' do
    let(:matrix1) do
      [[1,2,3],
       [4,5,6],
       [7,8,9]]
    end
    let(:matrix2) do
      [[:a,:b,:c],
       [:d,:e,:f],
       [:g,:h,:i]]
    end

    it 'returns a transpose of the given matrix' do
      expect(matrix1.my_transpose).to eq(matrix1.transpose)
    end

    it 'returns a tranpose regardless of matrix contents' do
      expect(matrix2.my_transpose).to eq(matrix2.transpose)
    end
  end

  describe '#stock_picker' do
    let(:stock1) { [5, 0, 3, 10] }
    let(:stock2) { [0, 0, 20, 20, 0, 0] }

    it 'returns days that give the largest profit' do
      expect(stock1.stock_picker).to eq([1, 3])
    end

    it 'buys stock before it sells' do
      expect(stock1.stock_picker).to eq(stock1.stock_picker.sort)
    end

    it 'returns multiple days if similar profits' do
      expect(stock2.stock_picker).to eq([0, 2])
    end

    it 'returns nil if there is no profit' do
      expect([4,3,2,1,0].stock_picker).to be_nil
    end
  end



end
