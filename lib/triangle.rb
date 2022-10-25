class Triangle
  def initialize(length, width, height)
     @sides = [length, width, height]
  end

  def kind
    
    if valid_triangle?
      if @sides.uniq.count == 1
        :equilateral
      elsif @sides.uniq.count == 2
        :isosceles
      else
        :scalene
      end
    else 
      raise TriangleError
    end
  end
  class TriangleError < StandardError
    def message
      "you must give valid sides of a triangle!"
    end
  end

  private
  def valid_triangle?
    @sides.each {|side| side > 0} && @sides.sort[0] + @sides.sort[1] > @sides.sort[2]
  end  
end

# t1 = Triangle.new(0,0,7)
# pp t1.kind
# Triangle.new(7, 3, 2).kind 




# # approach 2
# sides = [@length, @width, @height].sort
# if sides[0] == sides[2]
#   :equilateral
# elsif sides[0] == sides[1] || sides[1] == sides[2]
#   :isosceles
# else
#   :scalene
# end


