# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError if too_low(a,b,c) || other_condition(a, b, c)

  if equal(a, b, c)
    :equilateral
  elsif equal_2(a, b, c)
    :isosceles
  else 
    :scalene
  end
end



def equal(a, b, c)
  (a == b) && (b == c) && (c == a)
end

def equal_2(a, b, c)
  (a == c) || (c == b) || (b == a)
end

def too_low(a, b, c)
  a < 1 || b < 1 || c < 1
end

def other_condition(a, b, c)
  (a + b <= c) || (a + c <= b) || (c + b <= a)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
