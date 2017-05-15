class ChangeMachine
  def cost(cents)
    @cost = cents
  end

  def paid(cents)
    @paid = cents
  end

  def change_maker(difference)
    #takes difference and returns quarters, dimes, nickels and pennies
    while difference != 0
      if difference >= 25
        quarter
        difference -= 25
      elsif difference >= 10
        dime
        difference -= 10
      elsif difference >= 5
        nickel
        difference -= 5
      elsif difference >= 1
        penny
        difference -= 1
      end
    end
  end

  def dispense_change
    #sets up for change_maker method (makes sure difference btwn 0 and 99)
    difference = @paid - @cost
    return if difference <= 0
    difference = difference % 100
    change_maker(difference)
  end

  # Money methods

  def quarter
    puts 'Dispensed quarter'
  end
  def dime
    puts 'Dispensed dime'
  end
  def nickel
    puts 'Dispensed nickel'
  end
  def penny
    puts 'Dispensed penny'
  end
end
