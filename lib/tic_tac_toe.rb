class TicTacToe
  WIN_COMBINATIONS = [
   [0,1,2], # Top row
   [3,4,5],  # Middle row
   [6,7,8],  # Bottom row
   [0,3,6],  # First column
   [1,4,7],  # Middle column
   [2,5,8],  # Last column
   [0,4,8],  # Diagonal from top left to bottom right
   [6,4,2]  # Diagonal from bottom left to top right
  ]

  def initialize(board)
    @board = board || Array.new(9, " ")
  end



end
