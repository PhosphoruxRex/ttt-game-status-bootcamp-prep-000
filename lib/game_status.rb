# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  players = ["X", "O"]
  players.each do |player|
    WIN_COMBINATIONS.any? do |combo|
      if (board[combo[0]] == player)
      && (board[combo[1]] == player)
      && (board[combo[2]] == player)
        return combo
      end
    end
  end
end
