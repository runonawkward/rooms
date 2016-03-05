class Character
  attr_accessor :strength, :dexterity, :constitution, :inteligence, :wisdom, \
    :charisma
  attr_reader :name, :level, :class_type
  @ac=0
  @initiative=0
  @speed=0
  @health=0
  @hit_dice=0
  def initialize(name, class_type, level, strength=0, dexterity=0, \
      wisdom=0, constitution=0, inteligence=0, charisma=0 )
    @name = name
    @class_type = class_type
    @level = level
    @strength = strength
    @dexterity = dexterity
    @wisdom = wisdom
    @constitution = constitution
    @inteligence = inteligence
    @charisma = charisma
  end
end 

steve = Character.new("steve", "thug", 1 )
puts steve.name
puts steve.class_type
puts steve.level

