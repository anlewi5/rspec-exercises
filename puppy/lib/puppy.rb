class Puppy
  # Creates an instance variable "state" that you can set in your class.
  # "_reader" means other objects can read your state by calling "some_puppy.state".
  attr_reader :state

  def initialize
    # Puppies are calm at first.
    @state = :calm
  end

  def pet
    #pet once, @state = :wagging; pet twice or greater, @state = :excited
    if @state == :excited || @state == :wagging
        @state = :excited
    else
        @state = :wagging
    end
  end

  def rub_belly
    @state = :calm
  end

  def spray
    #one spray makes puppy growling, two or maore makes them angry
    if @state == :growling || @state == :angry
      @state = :angry
    else
      @state = :growling
    end
  end

  def speak
    if @state == :growling
      return "Grrrr."
    elsif @state == :angry
      return "BARK BARK BARK!"
    else
      return "Bark!"
    end
  end
end
