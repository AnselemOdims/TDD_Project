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
      expect{ @solver.factorial(num) }.to raise_exception(TypeError)
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
      expect{ @solver.reverse('word','secondstr') }.to raise_exception(ArgumentError)
    end
  end
end