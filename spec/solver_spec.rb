require '../solver'

describe Solver do
  solve = Solver.new

  describe "#factorial" do
    it "Should raise an exception error for negative numbers" do
      expect { perform_operation }.to raise_error(StandardError, "Not a positive integer")
    end

    it "Should return 1 for a factorial of 0 or 1" do
      expect(solve.factorial(0)).to eql(1)
      expect(solve.factorial(1)).to eql(1)
    end

    it "Should return a value for positive integers" do
      expect(solve.factorial(5)).to eql(120)
    end
  end
end
