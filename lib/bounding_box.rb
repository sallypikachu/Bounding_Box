require 'pry'
class BoundingBox
  attr_reader :x, :y, :width, :height, :left, :right, :bottom, :top

  def initialize (x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
    @left = x
    @right = x + width
    @bottom = y
    @top = y + height
  end

  def contains_point?(x_coordinate, y_coordinate)
    x <= x_coordinate && x_coordinate <= right && y <= y_coordinate && y_coordinate <= top
  end
end
