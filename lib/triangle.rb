class Triangle
  def initialize(length, width, height)
    @length = length
    @width =  width
    @height = height
  end

  def kind
    sides = [@length, @width, @height].uniq
    if valid_triangle?
      if sides.count == 1
        :equilateral
      elsif sides.count == 2
        :isosceles
      else
        :scalene
      end
    else
      "raise TriangleError"
    end
  end
  # class TriangleError < StandardError
  # end
  private
  def valid_triangle?
    sides = [@length, @width, @height].sort
    greatest_side = sides.pop
    greatest_side < sides.sum 
  end  
end

t1 = Triangle.new(0,0,7)
pp t1.kind
Triangle.new(7, 3, 2).kind 




# # approach 2
# sides = [@length, @width, @height].sort
# if sides[0] == sides[2]
#   :equilateral
# elsif sides[0] == sides[1] || sides[1] == sides[2]
#   :isosceles
# else
#   :scalene
# end


