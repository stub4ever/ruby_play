# #######
# # Times Method

# 5.times do |count|
#   puts "#{count} punch"
#   puts "#{count} kick"
#   puts "#{count} elbow"
# end

# puts '----'

# #######
# # Upto Method

# ##
# ## Multiline block
# ##

# 1.upto(5) do |count|
#   puts "#{count} punch"
#   puts "#{count} kick"
#   puts "#{count} elbow"
# end

# puts '----'

# ##
# ## single line block
# ##

# 1.upto(3) {|num| puts "#{num} kick"}

#######
# Step Method

# 1.step(10,2) do |count| #Count 1,3,7,9
#   puts "#{count} punch"
#   puts "#{count} kick"
#   puts "#{count} elbow"
# end

#######

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
cards = []

1.upto(5).each do |counter|
  flyers << Flyer.new("Flyer#{counter}", "flyer#{counter}@example.com", counter * 1000)
  cards << Flyer.new("Cards#{counter}", "card#{counter}@example.com", counter * 1000)
end

puts flyers
puts '----'
puts cards

