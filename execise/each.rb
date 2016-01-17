## => Iterate Through Arrays and Hashes

##
## Each do
##

# cards = ["Jack", "Queen", "King", "Ace", "Joker"]

# # shuffle cards
# cards.shuffle.each { |card| puts "#{card.upcase} - #{card.length}" }

# # reverse cards
# cards.reverse_each { |card| puts "#{card.upcase} - #{card.length}" }

##
## Hash
##

# scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

# scores.each do |value, key|
#   puts "#{value} scored a #{key}!"
# end


## => Iterate Through Frequent Flyers

class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5).each do |counter| # loop block variable 5 times
  puts "Flyer #{counter} - #{counter * 1000} miles" # count each loop inside the variable
  flyers << Flyer.new("Flyer#{counter}", "flyer#{counter}@example.com", counter * 1000)
end

total_miles = 0

flyers.each do |flyer|
  total_miles += flyer.miles_flown
end

puts "Total miles flown #{total_miles}"


#################
puts "---------------------"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5}

promotions.each do |airline, multiplier|    # value, key
  puts "Earn #{multiplier} miles by flying #{airline}!"
end

puts "---------------------"

desserts = {"chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25}

desserts.each do |taste, price|
  puts "#{price} for a cup #{taste}"
end

puts "---------------------"

team = "Broncos"

1.upto(4) do |number; team| # hold the block variable inside the block => or global puts will print 'Bobcats'
  team = "Bobcats"
  puts "#{number} Hooray #{team}"
end

puts team




