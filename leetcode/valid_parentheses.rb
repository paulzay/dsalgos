# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_valid(s)
  return true if s.empty?

  stack = []
  s.each_char do |i|
    case i
    when '(', '[', '{'
      stack.push(i)
    when ')'
      return false if stack.pop != '('
    when ']'
      return false if stack.pop != '['
    when '}'
      return false if stack.pop != '{'
    end
  end

  stack.empty?
end
