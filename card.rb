class Card
  attr_reader :value, :suit

  SUITS = %w[♠ ♥ ♣ ♦].freeze
  PICTURES = %w[J Q K A].freeze
  RANGE = ('2'..'10').freeze

  def initialize(suit, value)
    @value = value
    @suit = suit
  end
end
