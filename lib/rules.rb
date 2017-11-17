module Rules

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]]

  def won?(board = self)
    WIN_COMBINATIONS.detect do |comb|
      array = [board.cells[comb[0]], board.cells[comb[1]], board.cells[comb[2]]]
      array == ["X", "X", "X"] || array == ["O", "O", "O"]
    end
  end

end
