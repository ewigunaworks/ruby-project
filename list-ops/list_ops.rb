=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end

class ListOps
    def self.arrays(arr)
        count = 0
        arr.each { |i| count += 1 }
        count
    end

    def self.reverser(arr)
        arrs = []
        arr.each { |i| arrs.unshift(i) }
        arrs
    end

    def self.concatter(arr1, arr2)
        arr2.each { |i| arr1 << i }
        arr1
    end

    def self.mapper(arr, &block)
        arrs = []
        arr.each { |i| arrs << block.call(i) }
        arrs
    end

    def self.filterer(arr, &block)
        arrs = []
        arr.each { |i| arrs << i if block.call(i) }
        arrs
    end

    def self.sum_reducer(arr)
        total = 0
        arr.each { |i| total += i }
        total
    end

    def self.factorial_reducer(arr)
        total = 1
        arr.each { |i| total *= i }
        total
    end
end
