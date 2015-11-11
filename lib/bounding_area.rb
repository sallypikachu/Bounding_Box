require_relative 'bounding_box'

class BoundingArea
  attr_reader :boxes
  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point? (x, y)
    boxes.any? { |box| box.contains_point?(x, y) }
  end
end
