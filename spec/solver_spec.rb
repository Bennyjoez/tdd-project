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

  describe '#reverse' do
    it 'Should reverse word' do
      expect(@solve.reverse('hello')).to eql('olleh')
    end

    it 'Should reverse numbers given as a string' do
      expect(@solve.reverse('123')).to eql('321')
    end
  end

  describe '#fizzbuzz' do
    context 'Should return' do
      it 'fizz if number is divisible by 3' do
        expect(@solve.fizzbuzz(3)).to eql('fizz')
      end
  
      it 'buzz if number is divisible by 5' do
        expect(@solve.fizzbuzz(5)).to eql('buzz')
      end

      it 'fizzbuzz if number is divisble by 3 and 5' do
        expect(@solve.fizzbuzz(15).to eql('fizzbuzz'))
      end

      it 'throws an error for numbers not multiples of 3, or 5' do
        expect { @solve.fizzbuzz(4) }.to raise_error(ArgumentError, 'num should be a multiple of 3/5')
      end

      it 'throws an argument error for not a number' do
        expect { @solve.fizzbuzz('n') }.to raise_error(ArgumentError, 'element should be a number')
      end
    end
  end
end
