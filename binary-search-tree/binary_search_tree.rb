=begin
Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
`binary_search_tree_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search-tree` directory.
=end

class Bst
    attr_reader :data
    attr_accessor :left, :right
    def initialize(value)
        @data = value
        @left = nil
        @right = nil
    end

    def insert(val)
        if val > data
            if right.nil?
                self.right = Bst.new(val)
            else
                right.insert(val)
            end
        else
            if left.nil?
                self.left = Bst.new(val)
            else
                left.insert(val)
            end
        end
    end

    def each(&block)
        return to_enum unless block_given?

        left.each(&block) if left
        yield(data)
        right.each(&block) if right
    end
end