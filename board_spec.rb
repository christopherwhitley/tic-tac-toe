require_relative 'board'
require_relative 'square'

describe Board do
  let(:board) { Board.new }

  describe '#squares' do
    it 'returns an array of 9 squares' do
      squares = board.squares

      expect(squares).to match_array([
        instance_of(Square),
        instance_of(Square),
        instance_of(Square),
        instance_of(Square),
        instance_of(Square),
        instance_of(Square),
        instance_of(Square),
        instance_of(Square),
        instance_of(Square),
      ])
    end

    context 'when the board has a cross on it' do
      it 'has a cross in the squares array' do
        board.play_cross(2)

        expect(board.squares[2]).not_to be_empty
      end
    end
  end
end
