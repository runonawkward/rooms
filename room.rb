class Room
  attr_accessor :exits, :description
  attr_reader :status
  def initialize(description, challenges=nil, exits=nil)
    @description = description
    @challenges = challenges
    @exits = exits
  end

