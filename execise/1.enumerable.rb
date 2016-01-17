##### Experiment With Numbers

##
## Select Method
##

# scores = [83, 71, 92, 64, 98, 87, 75, 69]

# high_scores = scores.select {|number| number >= 80}  # Store in new array => number above 80 or equal
# p high_scores   # => [83, 92, 98, 87]

# puts '--'

# ##
# ## Reject Method
# ##

# low_scores = scores.reject {|number| number >= 80}  # Reject number if its below 80
# p low_scores #puts prints each element on its own line

# puts '--'

# ##
# ## Any Method
# ##

# puts scores.any? {|number| number < 70}   # Find any number of array below 70

# ##
# ## Detect Method
# ##

# puts scores.detect {|number| number <= 70}   # Detect number below 70 => return only first matching number


##### Analyze Frequent Flyers


class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)


freq_flyers = flyers.select do |flyer|    # Sort in new array > when returning is true
  flyer.miles_flown >= 3000               # Get flyer from atleast 3000
end

puts freq_flyers

puts '--'

freq_flyers = flyers.reject do |flyer|    # Sort in new array > when returning is false
  flyer.miles_flown >= 3000               # Get flyer from atleast below 3000
end

puts freq_flyers

puts '--'

puts flyers.any? { |flyer| flyer.status == :platinum } # check if there is any status is platinum => return if it is true

puts '--'

first_bronze = flyers.detect { |flyer| flyer.status == :bronze } # check the first player and return the first element to upgrade silver
puts first_bronze









