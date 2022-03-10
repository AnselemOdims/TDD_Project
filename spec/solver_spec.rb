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
  end
end