class Array

  def my_uniq
    uniq_arr = []
    each do |el|
      uniq_arr << el unless uniq_arr.include?(el)
    end
    uniq_arr
  end

  def two_sum
    two_sum_arr = []
    each_index do |idx1|
      next if idx1 == length - 1
      (idx1 + 1..length - 1).each do |idx2|
        two_sum_arr << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    two_sum_arr
  end

  def my_transpose
    new_tranpose_arr = []
    each_index do |idx|
      subarr = []
      each do |el|
        subarr << el[idx]
      end
      new_tranpose_arr << subarr
    end
    new_tranpose_arr
  end

  def stock_picker
    largest_diff_arr = nil
    profit = 0
    (0...length - 1).each do |buy_day|
      (buy_day + 1...length).each do |sell_day|
        current_profit = self[sell_day] - self[buy_day]
        if current_profit > profit
          largest_diff_arr = [buy_day, sell_day]
          profit = current_profit
        end
      end
    end
    largest_diff_arr
  end
end
