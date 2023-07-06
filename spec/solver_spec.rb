require_relative '../solver'

describe Solver do
  before :each do
    @solve = Solver.new
  end

  describe '#factorial' do
    it 'Should raise an exception error for negative numbers' do
      expect { @solve.factorial(-1) }.to raise_error(ArgumentError, 'num should be an integer')
    end

    it 'Should return 1 for a factorial of 0 or 1' do
      expect(@solve.factorial(0)).to eql(1)
      expect(@solve.factorial(1)).to eql(1)
    end

    it 'Should return a value for positive integers' do
      expect(@solve.factorial(5)).to eql(120)
    end
  end
end
