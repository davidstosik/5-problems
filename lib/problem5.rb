require 'problem2'

class Problem5
  def self.solve
    digits = (1..9).to_a
    [:+, :-, nil].repeated_permutation(8).map do |permutation|
      string = Problem2.alternate(digits, permutation).join('')
      string if eval(string) == 100
    end.compact
  end
end
