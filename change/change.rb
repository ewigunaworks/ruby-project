=begin
Write your code for the 'Change' exercise in this file. Make the tests in
`change_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/change` directory.
=end

class Change
    class NegativeTargetError < StandardError; end
    class ImpossibleCombinationError < StandardError; end

    def self.generate(coins, amount)
        return [] if amount == 0
        raise NegativeTargetError if amount < 0
        raise ImpossibleCombinationError if amount < coins.min

        coin_count = 1
        loop do
            combination_coins = coins.repeated_combination(coin_count)
            combination_coins.each do |i|
                return i if i.sum == amount
            end

            if combination_coins.all? {|x| x.sum > amount}
                raise ImpossibleCombinationError
            end

            coin_count += 1
        end
    end
end