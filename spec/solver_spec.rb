require_relative '../solver'

describe 'Solver' do
  before :each do
    @solver = Solver.new
  end

  context 'create an instance' do
    it 'should create a new instance' do
      expect(@solver).to be_instance_of Solver
    end
  end

  context '#factorial' do
    it 'should return the factorial of a number' do
      num = 5
      expect(@solver.factorial(num)).to eq 120
    end

    it 'should return error if number is not a positive integer' do
      num = -1
      expect { @solver.factorial(num) }.to raise_exception(TypeError)
    end
  end

  context '#reverse' do
    it 'word string should returned as drow' do
      reversed_word = @solver.reverse('word')
      expect(reversed_word).to eq 'drow'
    end

    it 'hello string should returned as olleh' do
      reversed_hello = @solver.reverse('hello')
      expect(reversed_hello).to eq 'olleh'
    end

    it 'function should be given just one paramater' do
      expect { @solver.reverse('word', 'secondstr') }.to raise_exception(ArgumentError)
    end
  end

  context '#fizzbuzz' do
    it 'should accept just one argument' do
      expect { @solver.fizzbuzz(6, 10) }.to raise_exception(ArgumentError)
    end

    it 'should accept just integers as a argument' do
      expect { @solver.fizzbuzz('aa') }.to raise_exception(TypeError)
    end

    it 'should return the result as a string' do
      expect(@solver.fizzbuzz(5)).to be_instance_of(String)
    end

    it 'should return "fizz" when param is divisible by 3 ' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
      expect(@solver.fizzbuzz(6)).to eq 'fizz'
      expect(@solver.fizzbuzz(9)).to eq 'fizz'
    end

    it 'should return "buzz" when param is divisible by 5 ' do
      expect(@solver.fizzbuzz(5)).to eq 'buzz'
      expect(@solver.fizzbuzz(10)).to eq 'buzz'
      expect(@solver.fizzbuzz(20)).to eq 'buzz'
    end

    it 'should return "fizzbuzz" when param is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(900)).to eq 'fizzbuzz'
    end

    it 'should return "7" when  param is 7' do
      expect(@solver.fizzbuzz(7)).to eq '7'
    end
  end
end
