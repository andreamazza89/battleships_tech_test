describe 'Integration: Board setup' do

let(:visualiser) { Visualiser.new }
let(:test_board) { Board.new }

  it 'Visualiser displays empty board' do 
    expect { visualiser.show_board(test_board) }.to output(EMPTY_BOARD).to_stdout_from_any_process
  end

  it 'User can place a ship in a board location' do 
    coordinates = { x: 3, y: 2 }
    test_board.add_ship(coordinates, :horizontal)
    expect { visualiser.show_board(test_board) }.to output(ONE_SHIP).to_stdout_from_any_process
  end

  EMPTY_BOARD = 
"   A B C D E F G H I J
 1|-------------------
 2|-------------------
 3|-------------------
 4|-------------------
 5|-------------------
 6|-------------------
 7|-------------------
 8|-------------------
 9|-------------------
10|-------------------
"

  ONE_SHIP = 
"   A B C D E F G H I J
 1|-------------------
 2|-------------------
 3|------S------------
 4|-------------------
 5|-------------------
 6|-------------------
 7|-------------------
 8|-------------------
 9|-------------------
10|-------------------
"
end
