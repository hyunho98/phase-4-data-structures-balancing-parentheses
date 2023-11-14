require_relative './stack'

# your code here
def balancing_parentheses(string)
    stack = Stack.new
    c = ""

    string.each_char do |char|
        if stack.size == 0
            stack.push(char)
        elsif char == "("
            stack.push(char)
        elsif stack.peek == "(" && char == ")"
            stack.pop
        else
            stack.push(char)
        end
    end

    stack.size
end