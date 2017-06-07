class Tower
  attr_accessor :towers
  def initialize
    @towers = Array.new(3) {Array.new}
    @towers[0] = [3,2,1]
  end

  def play
    until won?
      start_tower, end_tower = get_input
      move(start_tower, end_tower)
    end
  end

  def move(start_tower, end_tower)
    raise 'Starting tower is empty!' if towers[start_tower].empty?
    if !towers[end_tower].empty? && towers[start_tower].last > towers[end_tower].last
      raise 'Bigger disk can not be placed on a smaller disk!'
    end
    towers[end_tower] << towers[start_tower].pop
  end

  def won?
    return true if towers[1].length == 3 || towers[2].length == 3
    false
  end


end
