class Kata
  def initialize
    @face_values = {'0' => 10,
                    'J' => 11,
                    'Q' => 12,
                    'K' => 13,
                    'A' => 14 }
  end

  def result(hands)
    @hands = hands
    winner?
  end

  def highest_rank(color)
    convert_int(color).max
  end

  def convert_int(color)
    raw_values = [@hands[color][0][0], @hands[color][1][0]]
    raw_values.map! do |card_value|
      if @face_values.include?(card_value)
        @face_values[card_value]
      else
        card_value.to_i
      end
    end
  end

  def winner?
    if highest_rank(:white) > highest_rank(:black)
      "white wins!"
    elsif highest_rank(:white) < highest_rank(:black)
      "black wins!"
    else
      "Split the pot!"
    end
  end
end