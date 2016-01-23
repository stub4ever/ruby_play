require_relative 'interaction'

puts "Hello! My name is Moodcop 1.0.\nI am here to charge your daily mindset!\nBefore I can help you, Please access your email adress below:"
give_email = gets.chomp.to_s

until give_email =~ /^([a-zA-Z0-9_.-]?{20}+)\@([a-zA-Z0-9]+)\.([a-zA-Z]+)$/ do
  puts "\nI think you spell your mail wrong? \"#{give_email}\" Try again:)"
  give_email = gets.chomp.to_s

  if give_email =~ /^([a-zA-Z0-9_.-]?{20}+)\@([a-zA-Z0-9]+)\.([a-zA-Z]+)$/
    puts "\nYour email is correct! #{get_nickname(give_email)}, glad to have you here!"
  end
end

################################################################################

puts "\n#{get_nickname(give_email)},\nLets find something cool quotes base on your mood.\n"
puts 'Please take your time to think about few questions before choosing an mood options'
puts '  - Am I really Liking what I do?'
puts '  - How does my mood evolve over time?'
puts '  - What happened during the day when I feel good/bad at night?'

puts "\nChoose one of these mood today?"
puts 'Positive: "Engaged", "Inspired", "Motivated", "Calm", "Excited", "Happy", "Grateful"'
puts 'Negative: "Angry", "Afraid", "Dissappointed", "Confused", "Insecure", "Stressed", "Sad"'
give_mood = gets.chomp.to_s

puts "\nWrite one sentence why #{give_mood}?"
reason_mood = gets.chomp.to_s
