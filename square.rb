class Square
  def initialize(initial_state = nil)
    @state = initial_state
  end

  def play(new_state)
    @state = new_state
  end

  def empty?
    @state.nil?
  end
end
