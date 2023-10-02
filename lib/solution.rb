class Solution
  attr_accessor :distance, :cost, :power

  def initialize(distance, cost, power)
    @distance = distance
    @cost = cost
    @power = power
  end

  def render
    validate_input

    power_left = power
    rendered_objects = 0

    sorted_distance.each do |_, c|
      break if power_left < c

      power_left -= c
      rendered_objects += 1
    end

    rendered_objects
  end

  private

  def sorted_distance
    @sorted_distance ||= distance.zip(cost).sort_by { |d, c| [d, c] }
  end

  def validate_input
    return if distance.length == cost.length

    raise ArgumentError.new("Invalid input")
  end
end