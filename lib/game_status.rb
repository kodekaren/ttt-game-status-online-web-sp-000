def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
  WIN_COMBINATIONS.each do |win_combination|
    if board[0] == "X" && board[1] == "X" && board[2] == "X" ||
       board[0] == "O" && board[1] == "O" && board[2] == "O"
      return WIN_COMBINATIONS[0]
    end
    if board[3] == "X" && board[4] == "X" && board[5] == "X" ||
       board[3] == "O" && board[4] == "O" && board[5] == "O"
       return WIN_COMBINATIONS[1]
     end
     if board[6] == "X" && board[7] == "X" && board[8] == "X" ||
        board[6] == "O" && board[7] == "O" && board[8] == "O"
        return WIN_COMBINATIONS[2]
      end
      if board[0] == "X" && board[3] == "X" && board[6] == "X" ||
         board[0] == "O" && board[3] == "O" && board[6] == "O"
         return WIN_COMBINATIONS[3]
       end
        if board[1] == "X" && board[4] == "X" && board[7] == "X" ||
           board[1] == "O" && board[4] == "O" && board[7] == "O"
           return WIN_COMBINATIONS[4]
         end
          if board[2] == "X" && board[5] == "X" && board[8] == "X" ||
             board[2] == "O" && board[5] == "O" && board[8] == "O"
             return WIN_COMBINATIONS[5]
           end
           if board[0] == "X" && board[4] == "X" && board[8] == "X" ||
              board[0] == "O" && board[4] == "O" && board[8] == "O"
              return WIN_COMBINATIONS[6]
            end
            if board[2] == "X" && board[4] == "X" && board[6] == "X" ||
               board[2] == "O" && board[4] == "O" && board[6] == "O"
               return WIN_COMBINATIONS[7]
             else
               return false
end
end
end

def full?(board)
if board.include?("   ") == true
  return false
else
  return true
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    false
end
end

 def over?(board)
 end

 def winner(board)
  won?(board).include?("X")
     return "X"
   else
     return "O"
   end
 end
