def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip.to_i-1
    break if valid_move?(board, input)
  end
  move(board, input)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0,8) and !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index]=="X" or board[index]=="O"
end

def move(board, index, token="X")
  board[index]=token
end
