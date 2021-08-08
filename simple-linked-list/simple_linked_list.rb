=begin
Write your code for the 'Simple Linked List' exercise in this file. Make the tests in
`simple_linked_list_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-linked-list` directory.
=end
class Element
    attr_accessor :datum, :next
    def initialize(value)
        self.datum = value
    end
end

class SimpleLinkedList
    def initialize(array = [])
        @elem = []
        array.each do |i|
            push(Element.new(i))
        end
    end

    def to_a
        @elem.map(&:datum)
    end

    def push(element)
        @elem.unshift(element)
        self
    end

    def pop
        @elem.shift
    end

    def reverse!
        @elem.reverse!
        self
    end
end