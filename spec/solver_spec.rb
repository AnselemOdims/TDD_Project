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
      expect(@solver(num)).to raise_exception("number should not be a negative integer")
    end
  end
end