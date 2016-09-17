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
  raise TriangleError if invalid_params([a, b, c])

  case [a,b,c].uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
end

private

def invalid_params(params)
  a, b, c = params.sort
  a <= 0 || a + b <= c
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
