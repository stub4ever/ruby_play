
def details(info)
{ nickname: info.match(/^([a-zA-Z0-9_.-]?{20}+)@/)[1],
  domain: info.match(/@([a-zA-Z0-9]+)\./)[1],
  com: info.match(/\.([a-zA-Z]+)$/)[1],
  mood: info.match(/([a-zA-Z"'])/)[1].gsub("""", " ")
}
end

def get_nickname(name)
    return details(name)[:nickname]
end

def get_nickname(name)
    return details(name)[:mood]
end



# puts get_nickname("bui.vquoc@.com")

# def get_mood(mood, reason)

# end


  # - insert emailadress X

  # - Giving mood options

  # - Receive random moods quotes > choose

  # - Set 3 main goals today

  # - Write for each goal an step plan

  # - Get inspirational random quotes > choose

  # - Get all Status > date > name









# class User
#   attr_accessor :name   # access outside the class to change and output the value
#   attr_reader :goal    # access outside the class print output the value read

#   def
# end
