class Room
  attr_accessor :exits, :description
  attr_reader :status
  def initialize(description, challenges=nil, exits=nil)
    @description = description
    @challenges = challenges
    @exits = exits
  end
end

class Challenge
  @problem = {"prompt" => "this is a prompt", "solutions" => ["a","b","c"],}
end

class Problem
  attr_reader :prompt, :solutions
  def initialize(prompt,solutions,outcomes)
    @solutions = []
    @outcomes = []
    @prompt = prompt
    solutions.each() { |sol| @solutions.push(sol)}
    outcomes.each() { |sol| @outcomes.push(sol)}
  end
  def choose(choice)
    @outcomes[choice -1]
  end
end

