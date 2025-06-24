class Cell
  attr_reader :row, :col, :state

  def initialize(row, col, state = nil)
    @row = row
    @col = col
    @state = state
  end

  def empty?
    @state.nil?
  end

	def place(mark) # 'x'or'o'
    return false unless empty?
    @state = mark
    true
  end

	def clear
		@state = nil
	end

# convert to character
	def to_s
		@state || ' '
	end
end