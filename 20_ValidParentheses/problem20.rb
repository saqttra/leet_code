# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  s.each_char do |ch|
    case ch
    when '(', '{', '['
      stack.push ch
    when ')'
      return false if stack.empty?

      return false if stack.last != '('

      stack.pop
    when '}'
      return false if stack.empty?

      return false if stack.last != '{'

      stack.pop
    when ']'
      return false if stack.empty?

      return false if stack.last != '['

      stack.pop
    end
  end
  stack.empty?
end

puts is_valid '()'
puts is_valid '()[]{}'
puts is_valid '(]'
puts is_valid '[]]'
puts is_valid ']'
puts is_valid '(])'
puts is_valid '([])'
