require_relative 'square'

describe(Square) do
  let(:new_square) { Square.new }

  it 'starts empty' do
      expect(new_square.empty?).to be true
  end

  context 'when the square is filled with X' do
      let(:new_square) { Square.new('X') }
      it 'is not empty' do
          expect(new_square.empty?).to be false
      end
  end
end
