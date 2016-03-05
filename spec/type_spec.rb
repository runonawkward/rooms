#type spec unit tests for classes
#
require 'room'
RSpec.describe Problem do
  results = [["nothing works!", true],["stuff failed!",false]]
  solutions = ["do nothing", "do stuff"]
  prompt = "How will you solve this?"
  problem = Problem.new(prompt, solutions, results)
  describe '#prompt' do
        it 'returns a prompt string' do
      expect(problem.prompt).to eq(prompt)
    end
  end
  describe '#solutions' do
    it 'returns an array of solutions' do
      expect(problem.solutions.length).to eq(solutions.length)
    end
  end
  describe '#choose' do
    it 'returns a description of the result' do
      expect(problem.choose(1)[0]).to eq(results[0][0])
    end
    it 'returns a bool of success' do
      expect(problem.choose(1)[1]).to be true
    end
  end
end

