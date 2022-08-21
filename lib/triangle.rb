class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    sum1 = self.length1 + self.length2
    sum2 = self.length2 + self.length3
    sum3 = self.length1 + self.length3

    if(self.length1 <= 0 || self.length2 <= 0 || self.length3 <= 0 || sum1<=self.length3 || sum2<=self.length1 || sum3<=self.length2 )

        raise TriangleError
     
    elsif (self.length1 == self.length2 && self.length2 == self.length3 && self.length1 != 0)
        return :equilateral
      elsif (self.length1==self.length2 || self.length1==self.length3 || self.length2 == self.length3)
            return :isosceles
        else
          return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "error"
    end
  end

end